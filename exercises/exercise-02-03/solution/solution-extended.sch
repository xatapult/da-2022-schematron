<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="/*/book">
      <assert test="exists(@pagecount)">The book with code <value-of select="@code"/> must have a pagecount attribute</assert>
    </rule>
    <rule context="/*/magazine">
      <assert test="exists(@articlecount)">The magazine with code <value-of select="@code"/> must have an articlecount attribute</assert>
    </rule>
  </pattern>
  <pattern>
    <rule context="/*/book/@pagecount">
      <assert test="xs:integer(.) lt 200">The pagecount of <value-of select="."/> for book code <value-of select="../@code"/> must be less than 200</assert>
    </rule>
    <rule context="/*/magazine/@articlecount">
      <assert test="xs:integer(.) lt 6">The article count of <value-of select="."/> for magazine code <value-of select="../@code"/> must be less than 6</assert>
    </rule>
  </pattern>
  <pattern>
    <rule context="/*/*">
      <assert test="string-length(@code) eq 4">The code <value-of select="@code"/> is invalide, it must be 4 characters long</assert>
    </rule>
  </pattern>
</schema>
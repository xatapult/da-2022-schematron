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
    <rule context="/*/*">
      <assert test="string-length(@code) eq 4">The code <value-of select="@code"/> is invalide, it must be 4 characters long</assert>
    </rule>
  </pattern>
</schema>
<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="/*/book">
      <assert test="exists(@pagecount)">A book must have a pagecount attribute</assert>
    </rule>
    <rule context="/*/magazine">
      <assert test="exists(@articlecount)">A magazine must have an articlecount attribute</assert>
    </rule>
    <rule context="/*/*">
      <assert test="string-length(@code) eq 4">A code must be 4 characters long</assert>
    </rule>
  </pattern>
</schema>
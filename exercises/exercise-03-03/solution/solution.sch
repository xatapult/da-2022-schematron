<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>
    <rule context="thing">
      <assert test="(@type eq 'normal') or (@type eq 'special')" diagnostics="message-1"/>
    </rule>
  </pattern>

  <pattern>
    <rule context="artifact">
      <assert test="(@type eq 'martian') or (@type eq 'zorkian')" diagnostics="message-1"/>
    </rule>
  </pattern>

  <diagnostics>
    <diagnostic id="message-1"> Invalid type on <value-of select="@name"/>: <value-of select="@type"/></diagnostic>
  </diagnostics>

</schema>
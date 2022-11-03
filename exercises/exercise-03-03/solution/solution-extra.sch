<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>
    <rule context="thing">
      <assert test="(@type eq 'normal') or (@type eq 'special')" diagnostics="message-1 things-message"/>
    </rule>
  </pattern>

  <pattern>
    <rule context="artifact">
      <assert test="(@type eq 'martian') or (@type eq 'zorkian')" diagnostics="message-1 artifacts-message"/>
    </rule>
  </pattern>

  <diagnostics>
    <diagnostic id="message-1"> Invalid type on <value-of select="@name"/>: <value-of select="@type"/></diagnostic>
    <diagnostic id="things-message">Things must be normal or special</diagnostic>
    <diagnostic id="artifacts-message">Artifacts must be martian or zorkian</diagnostic>
  </diagnostics>

</schema>
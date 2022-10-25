<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern abstract="true" id="check-weight">
    <!-- Parameter: $type, $maxweight -->
    <rule context="$type">
      <assert test="xs:integer(weight-kg) le $maxweight">This weighs too much</assert>
    </rule>
  </pattern>

  <pattern is-a="check-weight">
    <param name="type" value="crate[@type eq 'wood']"/>
    <param name="maxweight" value="30"/>
  </pattern>

  <pattern is-a="check-weight">
    <param name="type" value="container"/>
    <param name="maxweight" value="2500"/>
  </pattern>

</schema>
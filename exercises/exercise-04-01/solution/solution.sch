<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <ns prefix="f" uri="#functions"/>

  <let name="department-code" value="/*/@depcode"/>

  <xsl:function xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="f:check-code" as="xs:boolean">
    <xsl:param name="code" as="xs:string"/>
    <xsl:sequence select="starts-with($code, $department-code)"/>
  </xsl:function>

  <pattern>
    <rule context="article">
      <assert test="f:check-code(@code)">The article code must start with the right prefix</assert>
    </rule>
  </pattern>
</schema>
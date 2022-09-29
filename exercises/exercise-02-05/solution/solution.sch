<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <ns prefix="db" uri="http://docbook.org/ns/docbook"/>
  <let name="title-max-length" value="30"/>
  <let name="sect1-min-para-count" value="3"/>
  <pattern>
    <rule context="db:sect1">
      <assert test="count(db:para) ge $sect1-min-para-count">The section titled "<value-of select="db:title"/>" must contain at least
                    <value-of select="$sect1-min-para-count"/> paragraphs of text</assert>
    </rule>
  </pattern>
  <pattern>
    <rule context="db:title">
      <let name="title-length" value="string-length(.)"/>
      <assert test="$title-length le $title-max-length">The title "<value-of select="."/>" is <value-of select="$title-length"/> characters
                  long, which is longer than the maximum allowed <value-of select="$title-max-length"/> characters</assert>
    </rule>
  </pattern>
</schema>
JRUBY PENDING - Script tags should be OK with unescaped ampersands. https://github.com/bhollis/maruku/issues/40
NOTE: CDATA is output because we use XHTML - for HTML mode it should be omitted.
JRuby Nokogiri doesn't put the CDATA in.
*** Parameters: ***
{}
*** Markdown input: ***
<script>
  var x = true && true;
</script>
*** Output of inspect ***
md_el(:document, md_html("<script><![CDATA[\n  var x = true && true;\n]]>\n</script>"))
*** Output of to_html ***
<script><![CDATA[
  var x = true && true;
]]></script>





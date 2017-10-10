Fixes Uninitialized eq2eqid hash
*** Parameters: ***
require 'maruku/ext/math';{:html_math_engine => 'itex2mml'}
*** Markdown input: ***
This is an unresolved equation reference (eq:xyz).

*** Output of inspect ***
md_el(:document, md_par([
       	"This is an unresolved equation reference ",
       	md_el(:eqref, [], {:eqid=>"xyz"}),
       	"."
]))
*** Output of to_html ***
<p>This is an unresolved equation reference (eq:xyz).</p>

*** Output of to_latex ***
This is an unresolved equation reference \eqref{xyz}.
*** Output of to_md ***

*** Output of to_s ***


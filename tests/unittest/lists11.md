Write a comment here
*** Parameters: ***
{} # params 
*** Markdown input: ***
- ένα

*** Output of inspect ***
md_el(:document,[md_par(["- \316\255\316\275\316\261"])],{},[])
*** Output of to_html ***

<p>- ένα</p>

*** Output of to_latex ***
- ένα

Non passa
*** Output of to_md ***
- ένα


*** Output of to_s ***
- ένα
*** EOF ***




Failed tests:   [:to_latex] 

*** Output of inspect ***
md_el(:document,[md_par(["- \316\255\316\275\316\261"])],{},[])
*** Output of to_html ***

<p>- ένα</p>

*** Output of to_latex ***
-----| WARNING | -----
- ένα


*** Output of to_md ***
- ένα


*** Output of to_s ***
- ένα
*** Output of Markdown.pl ***
<ul>
<li>ένα</li>
</ul>

*** Output of Markdown.pl (parsed) ***
<ul>
<li>ένα</li
     >
</ul
 >
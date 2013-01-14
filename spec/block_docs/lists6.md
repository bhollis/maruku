PENDING - Maruku improperly wraps list elements in paragraphs and doesn't handle nested lists right.
*** Parameters: ***
{}
*** Markdown input: ***
## Nested

*	Tab
	*	Tab
		*	Tab

Here's another:

1. First
2. Second:
	* Fee
	* Fie
	* Foe
3. Third

Same thing but with paragraphs:

1. First

2. Second:
	* Fee
	* Fie
	* Foe

3. Third

*** Output of inspect ***
md_el(:document,[
 	md_el(:header,["Nested"],{:level=>2},[]),
 	md_el(:ul,[
    md_el(:li,[
      "Tab",
      md_el(:ul,[
        md_el(:li,[
          "Tab",
          md_el(:ul,[
            md_el(:li,[
              "Tab"
            ],{:want_my_paragraph=>false},[])
          ],{},[]),
        ],{:want_my_paragraph=>false},[])
      ],{},[]),
    ],{:want_my_paragraph=>false},[])
  ],{},[]),
 	md_par(["Here", md_entity("rsquo"), "s another:"]),
 	md_el(:ol,[
   	md_el(:li,["First"],{:want_my_paragraph=>false},[]),
   	md_el(:li,[
   	  "Second:",
   	  md_el(:ul,[
   	    md_el(:li_span,["Fee"],{:want_my_paragraph=>false},[]),
 	      md_el(:li_span,["Fie"],{:want_my_paragraph=>false},[]),
 	      md_el(:li_span,["Foe"],{:want_my_paragraph=>false},[])
      ],{},[])
    ],{:want_my_paragraph=>true},[]),
 	  md_el(:li,["Third"],{:want_my_paragraph=>false},[])
  ],{},[]),
 	md_par(["Same thing but with paragraphs:"]),
 	md_el(:ol,[
 	  md_el(:li,[md_par(["First"])],{:want_my_paragraph=>true},[]),
 	  md_el(:li,[
 	    "Second:",
 	    md_el(:ul,[
 	      md_el(:li_span,["Fee"],{:want_my_paragraph=>false},[]),
 	      md_el(:li_span,["Fie"],{:want_my_paragraph=>false},[]),
 	      md_el(:li_span,["Foe"],{:want_my_paragraph=>false},[])
      ],{},[])
      ],{:want_my_paragraph=>true},[]),
 	  md_el(:li,["Third"],{:want_my_paragraph=>false},[])
  ],{},[])
],{},[])
*** Output of to_html ***
<h2 id="nested_1">Nested</h2>

<ul>
<li>Tab
<ul>
<li>Tab
<ul>
<li>Tab</li>
</ul></li>
</ul></li>
</ul>

<p>Here&#8217;s another:</p>

<ol>
<li>First</li>
<li>Second:

<ul>
<li>Fee</li>
<li>Fie</li>
<li>Foe</li>
</ul></li>
<li>Third</li>
</ol>

<p>Same thing but with paragraphs:</p>

<ol>
<li><p>First</p></li>
<li><p>Second:</p>

<ul>
<li>Fee</li>
<li>Fie</li>
<li>Foe</li>
</ul></li>
<li><p>Third</p></li>
</ol>
*** Output of to_latex ***

*** Output of to_md ***

*** Output of to_s ***


Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***
Paragraph 1

Paragraph 2


Paragraph 3
Paragraph 4
Paragraph Br->  
Paragraph 5



Escaping: & { } [ ] ! 

*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[	"Paragraph 1"]),
	md_el(:paragraph,[	"Paragraph 2"]),
	md_el(:paragraph,[
		"Paragraph 3 Paragraph 4 Paragraph Br->",
		md_el(:linebreak,[]),
		"Paragraph 5"
	]),
	md_el(:paragraph,[	"Escaping: & { } [ ] !"])
])
*** Output of to_html ***
<p>Paragraph 1</p
    ><p>Paragraph 2</p
    ><p>Paragraph 3 Paragraph 4 Paragraph Br-&gt;<br
      />Paragraph 5</p
    ><p>Escaping: &amp; { } [ ] !</p
  >
*** Output of to_latex ***
Paragraph 1

Paragraph 2

Paragraph 3 Paragraph 4 Paragraph Br-{\tt \char62}\linebreak Paragraph 5

Escaping: \& \{ \} [ ] !


*** Output of to_s ***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { } [ ] !
*** Output of to_md ***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { } [ ] !
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[	"Paragraph 1"]),
	md_el(:paragraph,[	"Paragraph 2"]),
	md_el(:paragraph,[
		"Paragraph 3 Paragraph 4 Paragraph Br->",
		md_el(:linebreak,[]),
		"Paragraph 5"
	]),
	md_el(:paragraph,[	"Escaping: & { } [ ] !"])
])
*** Output of to_html ***
<p>Paragraph 1</p
    ><p>Paragraph 2</p
    ><p>Paragraph 3 Paragraph 4 Paragraph Br-&gt;<br
      />Paragraph 5</p
    ><p>Escaping: &amp; { } [ ] !</p
  >
*** Output of to_latex ***
Paragraph 1

Paragraph 2

Paragraph 3 Paragraph 4 Paragraph Br-{\tt \char62}\linebreak Paragraph 5

Escaping: \& \{ \} [ ] !


*** Output of to_s ***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { } [ ] !
*** Output of to_md ***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { } [ ] !
*** Output of Markdown.pl ***
<p>Paragraph 1</p>

<p>Paragraph 2</p>

<p>Paragraph 3
Paragraph 4
Paragraph Br-> <br />
Paragraph 5</p>

<p>Escaping: &amp; { } [ ] ! </p>

*** Output of Markdown.pl (parsed) ***
<p>Paragraph 1</p
    ><p>Paragraph 2</p
    ><p>Paragraph 3
Paragraph 4
Paragraph Br-> <br
      />
Paragraph 5</p
    ><p>Escaping: &amp; { } [ ] ! </p
  >
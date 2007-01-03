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
	md_par(["Paragraph 1"]),
	 md_par(["Paragraph 2"]),
	 md_par([
		"Paragraph 3 Paragraph 4 Paragraph Br->",
		 md_el(:linebreak,[] ),
		 "Paragraph 5"
	]),
	 md_par(["Escaping: & { }  ! "])
] )
*** Output of to_html ***

<p>Paragraph 1</p>

<p>Paragraph 2</p>

<p>Paragraph 3 Paragraph 4 Paragraph Br-&gt;<br />
Paragraph 5</p>

<p>Escaping: &amp; { } ! </p>

*** Output of to_latex ***
Paragraph 1

Paragraph 2

Paragraph 3 Paragraph 4 Paragraph Br-{\tt \char62}\linebreak Paragraph 5

Escaping: \& \{ \}  ! 


*** Output of to_s ***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { }  ! 
*** Output of to_s ***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { }  ! 
*** EOF ***



	OK!



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
Paragraph Br-> <br/
     >
Paragraph 5</p
   ><p>Escaping: &amp; { } [ ] ! </p
 >
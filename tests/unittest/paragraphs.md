Paragraph 1

Paragraph 2


Paragraph 3
Paragraph 4
Paragraph Br->  
Paragraph 5



Escaping: & { } [ ] ! 

***EOF***
<p>Paragraph 1</p
    ><p>Paragraph 2</p
    ><p>Paragraph 3 Paragraph 4 Paragraph Br-&gt;<br
      />Paragraph 5</p
    ><p>Escaping: &amp; { } [ ] !</p
  >
***EOF***
Paragraph 1

Paragraph 2

Paragraph 3 Paragraph 4 Paragraph Br-{\tt \char62}\linebreak Paragraph 5

Escaping: \& \{ \} [ ] !


***EOF***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { } [ ] !
***EOF***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { } [ ] !
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Paragraph 1"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph 2"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph 3 Paragraph 4 Paragraph Br->",
		
		MDElement.new(:linebreak,[],{}),
		
		"Paragraph 5"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Escaping: & { } [ ] !"
	], {})
], {})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
<p>Paragraph 1</p
    ><p>Paragraph 2</p
    ><p>Paragraph 3 Paragraph 4 Paragraph Br-&gt;<br
      />Paragraph 5</p
    ><p>Escaping: &amp; { } [ ] !</p
  >
***EOF***
Paragraph 1

Paragraph 2

Paragraph 3 Paragraph 4 Paragraph Br-{\tt \char62}\linebreak Paragraph 5

Escaping: \& \{ \} [ ] !


***EOF***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { } [ ] !
***EOF***
Paragraph 1Paragraph 2Paragraph 3 Paragraph 4 Paragraph Br->Paragraph 5Escaping: & { } [ ] !
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Paragraph 1"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph 2"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Paragraph 3 Paragraph 4 Paragraph Br->",
		
		MDElement.new(:linebreak,[],{}),
		
		"Paragraph 5"
	], {}),
	
	MDElement.new(:paragraph,[	
		"Escaping: & { } [ ] !"
	], {})
], {})
***EOF***
<p>Paragraph 1</p>

<p>Paragraph 2</p>

<p>Paragraph 3
Paragraph 4
Paragraph Br-> <br />
Paragraph 5</p>

<p>Escaping: &amp; { } [ ] ! </p>

***EOF***
<p>Paragraph 1</p
    ><p>Paragraph 2</p
    ><p>Paragraph 3
Paragraph 4
Paragraph Br-> <br
      />
Paragraph 5</p
    ><p>Escaping: &amp; { } [ ] ! </p
  >
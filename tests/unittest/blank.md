
Linea 1

Linea 2
***EOF***
<p>Linea 1</p
    ><p>Linea 2</p
  >
***EOF***
Linea 1

Linea 2


***EOF***
Linea 1Linea 2
***EOF***
Linea 1Linea 2
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Linea 1"],
		{}),
	
	MDElement.new(:paragraph,[	
		"Linea 2"],
		{})],
	{})
***EOF***

Failed tests:   [] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


***EOF***
<p>Linea 1</p
    ><p>Linea 2</p
  >
***EOF***
Linea 1

Linea 2


***EOF***
Linea 1Linea 2
***EOF***
Linea 1Linea 2
***EOF***
MDElement.new(:document,[	
	MDElement.new(:paragraph,[	
		"Linea 1"],
		{}),
	
	MDElement.new(:paragraph,[	
		"Linea 2"],
		{})],
	{})
***EOF***
<p>Linea 1</p>

<p>Linea 2</p>

***EOF***
<p>Linea 1</p
    ><p>Linea 2</p
  >
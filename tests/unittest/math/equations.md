Write a comment here
*** Parameters: ***
{}
*** Markdown input: ***

$$ x = y $$

$$ x 
= y $$

$$ 
x = y $$

$$ x = y 
$$

*** Output of inspect ***
md_el(:document,[
	md_el(:equation,[],{:math=>" x = y "},[]),
	md_el(:equation,[],{:math=>" x = y \n"},[]),
	md_el(:equation,[],{:math=>" x = y \n"},[]),
	md_el(:equation,[],{:math=>" x = y \n"},[])
],{},[])
*** Output of to_html ***
<math xmlns='http://www.w3.org/1998/Math/MathML'><mi>x</mi><mo>=</mo><mi>y</mi></math><math xmlns='http://www.w3.org/1998/Math/MathML'><mi>x</mi><mo>=</mo><mi>y</mi></math><math xmlns='http://www.w3.org/1998/Math/MathML'><mi>x</mi><mo>=</mo><mi>y</mi></math><math xmlns='http://www.w3.org/1998/Math/MathML'><mi>x</mi><mo>=</mo><mi>y</mi></math>
*** Output of to_latex ***
\begin{equation}
x = y
\end{equation}
\begin{equation}
x = y
\end{equation}
\begin{equation}
x = y
\end{equation}
\begin{equation}
x = y
\end{equation}

*** Output of to_md ***

*** Output of to_s ***

*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>$$ x = y $$</p>

<p>$$ x 
= y $$</p>

<p>$$ 
x = y $$</p>

<p>$$ x = y 
$$</p>

*** Output of Markdown.pl (parsed) ***
<p>$$ x = y $$</p
   ><p>$$ x 
= y $$</p
   ><p>$$ 
x = y $$</p
   ><p>$$ x = y 
$$</p
 >
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




Failed tests:   [:inspect, :to_html, :to_latex, :to_md, :to_s] 

*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_par(["$$ x = y $$"]),
	md_el(:header,["$$ x"],{:level=>1},[]),
	md_par(["$$ x = y $$"]),
	md_par(["$$ x = y $$"])
],{},[])
*** Output of to_html ***
-----| WARNING | -----

<p>$$ x = y $$</p>

<h1 id='_x'>$$ x</h1>

<p>$$ x = y $$</p>

<p>$$ x = y $$</p>

*** Output of to_latex ***
-----| WARNING | -----
\$\$ x = y \$\$

\hypertarget{_x}{}\section*{{\$\$ x}}\label{_x}

\$\$ x = y \$\$

\$\$ x = y \$\$


*** Output of to_md ***
-----| WARNING | -----
$$ x = y $$

$$ x$$ x = y $$

$$ x = y $$


*** Output of to_s ***
-----| WARNING | -----
$$ x = y $$$$ x$$ x = y $$$$ x = y $$
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
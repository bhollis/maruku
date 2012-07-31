Write a comment here
*** Parameters: ***
require 'maruku/ext/math';{:html_math_engine => 'itex2mml'}
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
	md_el(:equation,[],{:label=>nil,:math=>" x = y ",:num=>nil},[]),
	md_el(:equation,[],{:label=>nil,:math=>" x \n= y \n",:num=>nil},[]),
	md_el(:equation,[],{:label=>nil,:math=>" \nx = y \n",:num=>nil},[]),
	md_el(:equation,[],{:label=>nil,:math=>" x = y \n\n",:num=>nil},[])
],{},[])
*** Output of to_html ***
<div class="maruku-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" class="maruku-mathml"><mi>x</mi><mo>=</mo><mi>y</mi></math><span class="maruku-eq-tex"><code style="display: none">x = y</code></span></div><div class="maruku-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" class="maruku-mathml"><mi>x</mi><mo>=</mo><mi>y</mi></math><span class="maruku-eq-tex"><code style="display: none">x 
= y</code></span></div><div class="maruku-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" class="maruku-mathml"><mi>x</mi><mo>=</mo><mi>y</mi></math><span class="maruku-eq-tex"><code style="display: none">x = y</code></span></div><div class="maruku-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" class="maruku-mathml"><mi>x</mi><mo>=</mo><mi>y</mi></math><span class="maruku-eq-tex"><code style="display: none">x = y</code></span></div>
*** Output of to_latex ***
\begin{displaymath}
x = y
\end{displaymath}
\begin{displaymath}
x 
= y
\end{displaymath}
\begin{displaymath}
x = y
\end{displaymath}
\begin{displaymath}
x = y
\end{displaymath}
*** Output of to_md ***

*** Output of to_s ***


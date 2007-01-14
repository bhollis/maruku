LaTeX preamble: math_preamble.tex
LaTeX use listings: true
CSS: math.css style.css

Math support in Maruku
======================


Introduction...

* toc
{:toc}

Syntax
---------------------------------------

### Inline math

Inline math are comprised inside couples of `$`. 

Everything inside `$` will be passed as-is to LaTeX: no Markdown
interpretation will take place.

	Example: $x^{n}+y^{n} \neq z^{n}$ for $n \geq 3$

> Example: $x^{n}+y^{n} \neq z^{n}$ for $n \geq 3$

### Equations 

Equations are specified using either the `$$ ... $$` or `\[ ... \]`
LaTeX notation. Equations can span multiple lines.

	\[ 
	\sum_{n=1}^\infty \frac{1}{n} 
	\text{ is divergent, but } 
	\lim_{n \to \infty} \sum_{i=1}^n \frac{1}{i} - \ln n \text{exists.} 
	\]

> \[ 
> 	\sum_{n=1}^\infty \frac{1}{n} 
> 	\text{ is divergent, but } 
> 	\lim_{n \to \infty} \sum_{i=1}^n \frac{1}{i} - \ln n \quad \text{exists.} 
> \]

Some random AMSTeX symbols:

	$$ \beth \Subset \bigtriangleup \smallsmile \bumpeq \ggg \pitchfork $$ 

$$ \beth \Subset \bigtriangleup \smallsmile \bumpeq \ggg \pitchfork $$ 


## Cross references ## {#cross}

Create a label for an equation in two ways:

*	LaTeX style
	
		Consider \eqref{a}:
	
		$$ \alpha = \beta  \label{a} $$

*	More readable style:

		Consider (eq:a):

		$$ \alpha = \beta $$        (a)
	 
You can mix the two.

Labels will work as expected also in the PDF output, whatever
style you use: Maruku will insert the necessary `\label` commands.

The following are 4 equations, labeled A,B,C,D:

$$ \alpha $$ (A)

\[ 
	\beta
\] (B) 

$$ \gamma \label{C} $$

\[ 
	\delta \label{D}
\]

You can now refer to (eq:A), (eq:B), \eqref{C}, \eqref{D}.


Enabling the extension
---------------------------------------

### On the command line 

...

### With embedded Maruku

...

### MathML output 

...

### PNG output ###

...


Advanced topics
---------------

### Styling equations ####

...

### Aligning PNGs ####

...






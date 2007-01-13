Write a comment here
*** Parameters: ***
{}
*** Markdown input: ***
<table markdown='1'>
	This equation: $ \alpha $ costed 10$ to make or $10$$.
	<thead>
		<td>$\beta$</td>
	</thead>
</table>
*** Output of inspect ***
md_el(:document,[
	md_html("<table markdown='1'>\n\tThis equation: $ \\alpha $ costed 10$ to make or $10$$.\n\t<thead>\n\t\t<td>$\\beta$</td>\n\t</thead>\n</table>")
],{},[])
*** Output of to_html ***
<table>This equation: <math xmlns='http://www.w3.org/1998/Math/MathML'><mi>&alpha;</mi></math> costed 10$ to make or <math xmlns='http://www.w3.org/1998/Math/MathML'><mn>10</mn></math>$.<thead>
		<td><math xmlns='http://www.w3.org/1998/Math/MathML'><mi>&beta;</mi></math></td>
	</thead>
</table>
*** Output of to_latex ***

*** Output of to_md ***

*** Output of to_s ***

*** EOF ***



	OK!



*** Output of Markdown.pl ***
<table markdown='1'>
    This equation: $ \alpha $ costed 10$ to make or $10$$.
    <thead>
        <td>$\beta$</td>
    </thead>
</table>

*** Output of Markdown.pl (parsed) ***
<table markdown='1'>
    This equation: $ \alpha $ costed 10$ to make or $10$$.
    <thead>
        <td>$\beta$</td
       >
    </thead
     >
</table
 >
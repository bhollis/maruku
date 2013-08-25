Write a comment here
*** Parameters: ***
require 'maruku/ext/math';{:html_math_engine => 'blahtex'}
*** Markdown input: ***

$$ x = y $$

$$ x 
= y $$

$$ 
x = y $$

$$ x = y 
$$

*** Output of inspect ***

*** Output of to_html ***
<div class="maruku-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" class="maruku-mathml">
<mrow><mi>x</mi><mo lspace="0.278em" rspace="0.278em">=</mo><mi>y</mi></mrow>
</math><span class="maruku-eq-tex"><code style="display: none">x = y</code></span></div><div class="maruku-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" class="maruku-mathml">
<mrow><mi>x</mi><mo lspace="0.278em" rspace="0.278em">=</mo><mi>y</mi></mrow>
</math><span class="maruku-eq-tex"><code style="display: none">x 
= y</code></span></div><div class="maruku-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" class="maruku-mathml">
<mrow><mi>x</mi><mo lspace="0.278em" rspace="0.278em">=</mo><mi>y</mi></mrow>
</math><span class="maruku-eq-tex"><code style="display: none">x = y</code></span></div><div class="maruku-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" class="maruku-mathml">
<mrow><mi>x</mi><mo lspace="0.278em" rspace="0.278em">=</mo><mi>y</mi></mrow>
</math><span class="maruku-eq-tex"><code style="display: none">x = y</code></span></div>
*** Output of to_latex ***

Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***


This is an email address: <andrea@invalid.it>
	
*** Output of inspect ***
#<Maruku:0x1118428 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x111366c @node_type=:paragraph, @doc=#<Maruku:0x1118428 ...>, @children=["This is an email address: ", #<MDElement:0x1113e78 @node_type=:email_address, @doc=#<Maruku:0x1118428 ...>, @children=[], @meta={:email=>"andrea@invalid.it"}>, " "], @meta={}>], @doc=#<Maruku:0x1118428 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<p>This is an email address: <a href='mailto:andrea@invalid.it'>&#097;&#110;&#100;&#114;&#101;&#097;&#064;&#105;&#110;&#118;&#097;&#108;&#105;&#100;&#046;&#105;&#116;</a
      > </p
  >
*** Output of to_latex ***
This is an email address: \href{mailto:andrea@invalid.it}{\char97\char110\char100\char114\char101\char97\char64\char105\char110\char118\char97\char108\char105\char100\char46\char105\char116} 


*** Output of to_s ***
This is an email address:  
*** Output of to_md ***
This is an email address:  
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>This is an email address: <a href="&#x6D;&#97;&#105;&#108;&#116;&#x6F;:a&#110;&#x64;&#114;&#101;&#x61;&#64;&#x69;&#x6E;&#x76;a&#x6C;&#x69;&#x64;&#46;i&#x74;">a&#110;&#x64;&#114;&#101;&#x61;&#64;&#x69;&#x6E;&#x76;a&#x6C;&#x69;&#x64;&#46;i&#x74;</a></p>

*** Output of Markdown.pl (parsed) ***
<p>This is an email address: <a href='&amp;#x6D;&amp;#97;&amp;#105;&amp;#108;&amp;#116;&amp;#x6F;:a&amp;#110;&amp;#x64;&amp;#114;&amp;#101;&amp;#x61;&amp;#64;&amp;#x69;&amp;#x6E;&amp;#x76;a&amp;#x6C;&amp;#x69;&amp;#x64;&amp;#46;i&amp;#x74;'>a&#110;&#x64;&#114;&#101;&#x61;&#64;&#x69;&#x6E;&#x76;a&#x6C;&#x69;&#x64;&#46;i&#x74;</a
    ></p
  >
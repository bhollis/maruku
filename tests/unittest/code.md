Comment
*** Parameters: ***
{}
*** Markdown input: ***
Here is an example of AppleScript:

    tell application "Foo"
        beep
    end tell
    	tab

*** Output of inspect ***
#<Maruku:0x1072a50 @refs={}, @node_type=:document, @toc=Master
, @children=[#<MDElement:0x1070b24 @node_type=:paragraph, @doc=#<Maruku:0x1072a50 ...>, @children=["Here is an example of AppleScript:"], @meta={}>, #<MDElement:0x10709e4 @node_type=:code, @doc=#<Maruku:0x1072a50 ...>, @children=[], @meta={:raw_code=>"tell application \"Foo\"\n    beep\nend tell\n\ttab"}>], @doc=#<Maruku:0x1072a50 ...>, @abbreviations={}, @stack=[], @meta={}, @footnotes={}>
*** Output of to_html ***
<p>Here is an example of AppleScript:</p
    ><pre
      ><code>tell application &quot;Foo&quot;
    beep
end tell
	tab</code
    ></pre
  >
*** Output of to_latex ***
Here is an example of AppleScript:

\begin{verbatim}tell application "Foo"
    beep
end tell
	tab\end{verbatim}

*** Output of to_s ***
Here is an example of AppleScript:
*** Output of to_md ***
Here is an example of AppleScript:
*** EOF ***



	OK!



*** Output of Markdown.pl ***
<p>Here is an example of AppleScript:</p>

<pre><code>tell application "Foo"
    beep
end tell
    tab
</code></pre>

*** Output of Markdown.pl (parsed) ***
<p>Here is an example of AppleScript:</p
    ><pre
      ><code>tell application "Foo"
    beep
end tell
    tab
</code
    ></pre
  >
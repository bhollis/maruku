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
md_el(:document,[
	md_el(:paragraph,[	"Here is an example of AppleScript:"]),
	md_el(:code,[], {:raw_code=>"tell application \"Foo\"\n    beep\nend tell\n\ttab"})
])
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




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[	"Here is an example of AppleScript:"]),
	md_el(:code,[], {:raw_code=>"tell application \"Foo\"\n    beep\nend tell\n\ttab"})
])
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
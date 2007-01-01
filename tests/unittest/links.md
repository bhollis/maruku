Write a comment abouth the test here.
*** Parameters: ***
{}
*** Markdown input: ***

Search on [Google][]

Search on [Google] []

Search on [Google] [google]

Search on [Google] [Google]

Search on [Google images][]

Search on [Google images][ 	GoOgle search ]

Inline: [Google images](http://google.com)

Inline with title: [Google images](http://google.com "Title")

Inline with title: [Google images]( http://google.com  "Title" )


Search on <http://www.gogole.com> or <http://Here.com> or ask <mailto:bill@google.com>
or you might ask bill@google.com.

If all else fails, ask [Google](http://www.google.com)
	
[google]: http://www.google.com

[google2]: http://www.google.com 'Single quotes'

[google3]: http://www.google.com "Double quotes"

[google4]: http://www.google.com (Parenthesis)

[Google Search]: 
 http://www.google.com "Google search"

[Google Images]: 
 http://images.google.com  (Google images)
*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google"], {:ref_id=>"google"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google"], {:ref_id=>"google"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google"], {:ref_id=>"google"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google"], {:ref_id=>"google"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google images"], {:ref_id=>"google images"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google images"], {:ref_id=>"google search"})
	]),
	md_el(:paragraph,[
		"Inline: ",
		md_el(:link,[	"Google images"], {:ref_id=>"dummy_0"})
	]),
	md_el(:paragraph,[
		"Inline with title: ",
		md_el(:link,[	"Google images"], {:ref_id=>"dummy_1"})
	]),
	md_el(:paragraph,[
		"Inline with title: ",
		md_el(:link,[	"Google images"], {:ref_id=>"dummy_2"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:immediate_link,[], {:url=>"http://www.gogole.com"}),
		" or ",
		md_el(:immediate_link,[], {:url=>"http://Here.com"}),
		" or ask ",
		md_el(:immediate_link,[], {:url=>"mailto:bill@google.com"}),
		" or you might ask bill@google.com."
	]),
	md_el(:paragraph,[
		"If all else fails, ask ",
		md_el(:link,[	"Google"], {:ref_id=>"dummy_3"}),
		"  [google]: http://www.google.com"
	])
])
*** Output of to_html ***
<p>Search on <a>Google</a
    ></p
    ><p>Search on <a>Google</a
    ></p
    ><p>Search on <a>Google</a
    ></p
    ><p>Search on <a>Google</a
    ></p
    ><p>Search on <a href='http://images.google.com' title='Google images'>Google images</a
    ></p
    ><p>Search on <a href='http://www.google.com' title='Google search'>Google images</a
    ></p
    ><p>Inline: <a href='http://google.com'>Google images</a
    ></p
    ><p>Inline with title: <a href='http://google.com'>Google images</a
    ></p
    ><p>Inline with title: <a href='http://google.com'>Google images</a
    ></p
    ><p>Search on <a href='http://www.gogole.com'>http://www.gogole.com</a
      > or <a href='http://Here.com'>http://Here.com</a
      > or ask <a href='mailto:bill@google.com'>bill@google.com</a
      > or you might ask bill@google.com.</p
    ><p>If all else fails, ask <a href='http://www.google.com'>Google</a
      > [google]: http://www.google.com</p
  >
*** Output of to_latex ***
Search on Google

Search on Google

Search on Google

Search on Google

Search on \href{http://images.google.com}{Google images}

Search on \href{http://www.google.com}{Google images}

Inline: \href{http://google.com}{Google images}

Inline with title: \href{http://google.com}{Google images}

Inline with title: \href{http://google.com}{Google images}

Search on \href{http://www.gogole.com}{http://www.gogole.com} or \href{http://Here.com}{http://Here.com} or ask \href{mailto:bill@google.com}{mailto:bill@google.com} or you might ask bill@google.com.

If all else fails, ask \href{http://www.google.com}{Google}  [google]: http://www.google.com


*** Output of to_s ***
Search on GoogleSearch on GoogleSearch on GoogleSearch on GoogleSearch on Google imagesSearch on Google imagesInline: Google imagesInline with title: Google imagesInline with title: Google imagesSearch on  or  or ask  or you might ask bill@google.com.If all else fails, ask Google  [google]: http://www.google.com
*** Output of to_md ***
Search on GoogleSearch on GoogleSearch on GoogleSearch on GoogleSearch on Google imagesSearch on Google imagesInline: Google imagesInline with title: Google imagesInline with title: Google imagesSearch on  or  or ask  or you might ask bill@google.com.If all else fails, ask Google  [google]: http://www.google.com
*** EOF ***




Failed tests:   [] 
And the following are the actual outputs for methods:
   [:inspect, :to_html, :to_latex, :to_s, :to_md]:


*** Output of inspect ***
md_el(:document,[
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google"], {:ref_id=>"google"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google"], {:ref_id=>"google"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google"], {:ref_id=>"google"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google"], {:ref_id=>"google"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google images"], {:ref_id=>"google images"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:link,[	"Google images"], {:ref_id=>"google search"})
	]),
	md_el(:paragraph,[
		"Inline: ",
		md_el(:link,[	"Google images"], {:ref_id=>"dummy_0"})
	]),
	md_el(:paragraph,[
		"Inline with title: ",
		md_el(:link,[	"Google images"], {:ref_id=>"dummy_1"})
	]),
	md_el(:paragraph,[
		"Inline with title: ",
		md_el(:link,[	"Google images"], {:ref_id=>"dummy_2"})
	]),
	md_el(:paragraph,[
		"Search on ",
		md_el(:immediate_link,[], {:url=>"http://www.gogole.com"}),
		" or ",
		md_el(:immediate_link,[], {:url=>"http://Here.com"}),
		" or ask ",
		md_el(:immediate_link,[], {:url=>"mailto:bill@google.com"}),
		" or you might ask bill@google.com."
	]),
	md_el(:paragraph,[
		"If all else fails, ask ",
		md_el(:link,[	"Google"], {:ref_id=>"dummy_3"}),
		"  [google]: http://www.google.com"
	])
])
*** Output of to_html ***
<p>Search on <a>Google</a
    ></p
    ><p>Search on <a>Google</a
    ></p
    ><p>Search on <a>Google</a
    ></p
    ><p>Search on <a>Google</a
    ></p
    ><p>Search on <a href='http://images.google.com' title='Google images'>Google images</a
    ></p
    ><p>Search on <a href='http://www.google.com' title='Google search'>Google images</a
    ></p
    ><p>Inline: <a href='http://google.com'>Google images</a
    ></p
    ><p>Inline with title: <a href='http://google.com'>Google images</a
    ></p
    ><p>Inline with title: <a href='http://google.com'>Google images</a
    ></p
    ><p>Search on <a href='http://www.gogole.com'>http://www.gogole.com</a
      > or <a href='http://Here.com'>http://Here.com</a
      > or ask <a href='mailto:bill@google.com'>bill@google.com</a
      > or you might ask bill@google.com.</p
    ><p>If all else fails, ask <a href='http://www.google.com'>Google</a
      > [google]: http://www.google.com</p
  >
*** Output of to_latex ***
Search on Google

Search on Google

Search on Google

Search on Google

Search on \href{http://images.google.com}{Google images}

Search on \href{http://www.google.com}{Google images}

Inline: \href{http://google.com}{Google images}

Inline with title: \href{http://google.com}{Google images}

Inline with title: \href{http://google.com}{Google images}

Search on \href{http://www.gogole.com}{http://www.gogole.com} or \href{http://Here.com}{http://Here.com} or ask \href{mailto:bill@google.com}{mailto:bill@google.com} or you might ask bill@google.com.

If all else fails, ask \href{http://www.google.com}{Google}  [google]: http://www.google.com


*** Output of to_s ***
Search on GoogleSearch on GoogleSearch on GoogleSearch on GoogleSearch on Google imagesSearch on Google imagesInline: Google imagesInline with title: Google imagesInline with title: Google imagesSearch on  or  or ask  or you might ask bill@google.com.If all else fails, ask Google  [google]: http://www.google.com
*** Output of to_md ***
Search on GoogleSearch on GoogleSearch on GoogleSearch on GoogleSearch on Google imagesSearch on Google imagesInline: Google imagesInline with title: Google imagesInline with title: Google imagesSearch on  or  or ask  or you might ask bill@google.com.If all else fails, ask Google  [google]: http://www.google.com
*** Output of Markdown.pl ***
<p>Search on <a href="http://www.google.com">Google</a></p>

<p>Search on <a href="http://www.google.com">Google</a></p>

<p>Search on <a href="http://www.google.com">Google</a></p>

<p>Search on <a href="http://www.google.com">Google</a></p>

<p>Search on <a href="http://images.google.com" title="Google images">Google images</a></p>

<p>Search on [Google images][  GoOgle search ]</p>

<p>Inline: <a href="http://google.com">Google images</a></p>

<p>Inline with title: <a href="http://google.com" title="Title">Google images</a></p>

<p>Inline with title: <a href="http://google.com  "Title"">Google images</a></p>

<p>Search on <a href="http://www.gogole.com">http://www.gogole.com</a> or <a href="http://Here.com">http://Here.com</a> or ask <a href="&#109;&#x61;&#x69;&#x6C;&#116;&#x6F;:&#x62;i&#x6C;&#108;&#64;&#103;&#111;o&#103;&#x6C;&#101;&#x2E;&#99;&#x6F;&#109;">&#x62;i&#x6C;&#108;&#64;&#103;&#111;o&#103;&#x6C;&#101;&#x2E;&#99;&#x6F;&#109;</a>
or you might ask bill@google.com.</p>

<p>If all else fails, ask <a href="http://www.google.com">Google</a></p>

<p>[google2]: http://www.google.com 'Single quotes'</p>

*** Output of Markdown.pl (parsed) ***
Error: #<REXML::ParseException: #<REXML::ParseException: Missing end tag for 'p' (got "div")
Line: 
Position: 
Last 80 unconsumed characters:
>
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/parsers/baseparser.rb:315:in `pull'
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/parsers/treeparser.rb:21:in `parse'
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/document.rb:190:in `build'
/Volumes/Alter/Ruby/local/lib/ruby/1.8/rexml/document.rb:45:in `initialize'
bin/marutest:112:in `new'
bin/marutest:112:in `run_test'
bin/marutest:176:in `marutest'
bin/marutest:174:in `each'
bin/marutest:174:in `marutest'
bin/marutest:244
...
Missing end tag for 'p' (got "div")
Line: 
Position: 
Last 80 unconsumed characters:

Line: 
Position: 
Last 80 unconsumed characters:
>

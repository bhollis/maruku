Write a comment abouth the test here.
*** Markdown input: ***
CSS: style.css


Apple
:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.

Orange
:   The fruit of an evergreen tree of the genus Citrus.

***

Apple
:   Pomaceous fruit of plants of the genus Malus in 
the family Rosaceae.

Orange
:   The fruit of an evergreen tree of the genus Citrus.


***

Apple
:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.
:   An american computer company.

Orange
:   The fruit of an evergreen tree of the genus Citrus.

***

Term 1
Term 2
:   Definition a

Term 3
:   Definition b

***


Term 1
Term 2
Term 2a
Term 2b
:   Definition a

Term 3
:   Definition b

***

Apple

:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.

Orange

:    The fruit of an evergreen tree of the genus Citrus.

***

Term 1

:   This is a definition with two paragraphs. Lorem ipsum 
    dolor sit amet, consectetuer adipiscing elit. Aliquam 
    hendrerit mi posuere lectus.

    Vestibulum enim wisi, viverra nec, fringilla in, laoreet
    vitae, risus.

:   Second definition for term 1, also wrapped in a paragraph
    because of the blank line preceding it.

Term 2

:   This definition has a code block, a blockquote and a list.

        code block.

    > block quote
    > on two lines.

    1.  first list item
    2.  second list item

***

Term 1
Term 2
Term 2a
Term 2b
:   Definition a

This is a paragraph

This is a term

: definition
*** Output of to_html ***
<dl
      ><dt>Apple</dt
      ><dd>Pomaceous fruit of plants of the genus Malus in the family Rosaceae.</dd
      ><dt>Orange</dt
      ><dd>The fruit of an evergreen tree of the genus Citrus.</dd
    ></dl
    ><hr
    /><dl
      ><dt>Apple</dt
      ><dd>Pomaceous fruit of plants of the genus Malus in the family Rosaceae</dd
      ><dt>Orange</dt
      ><dd>The fruit of an evergreen tree of the genus Citrus.</dd
    ></dl
    ><hr
    /><dl
      ><dt>Apple</dt
      ><dd>Pomaceous fruit of plants of the genus Malus in the family Rosaceae.</dd
      ><dd>An american computer company.</dd
      ><dt>Orange</dt
      ><dd>The fruit of an evergreen tree of the genus Citrus.</dd
    ></dl
    ><hr
    /><dl
      ><dt>Term 1</dt
      ><dt>Term 2</dt
      ><dd>Definition a</dd
      ><dt>Term 3</dt
      ><dd>Definition b</dd
    ></dl
    ><hr
    /><dl
      ><dt>Term 1</dt
      ><dt>Term 2</dt
      ><dt>Term 2a</dt
      ><dt>Term 2b</dt
      ><dd>Definition a</dd
      ><dt>Term 3</dt
      ><dd>Definition b</dd
    ></dl
    ><hr
    /><dl
      ><dt>Apple</dt
      ><dd
        ><p>Pomaceous fruit of plants of the genus Malus in the family Rosaceae.</p
      ></dd
      ><dt>Orange</dt
      ><dd
        ><p>The fruit of an evergreen tree of the genus Citrus.</p
      ></dd
    ></dl
    ><hr
    /><dl
      ><dt>Term 1</dt
      ><dd
        ><p>This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.</p
        ><p>Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.</p
      ></dd
      ><dd
        ><p>Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it.</p
      ></dd
      ><dt>Term 2</dt
      ><dd
        ><p>This definition has a code block, a blockquote and a list.</p
        ><pre
          ><code>code block.
</code
        ></pre
        ><blockquote
          ><p>block quote on two lines.</p
        ></blockquote
        ><ol
          ><li>first list item</li
          ><li>second list item</li
        ></ol
      ></dd
    ></dl
    ><hr
    /><dl
      ><dt>Term 1</dt
      ><dt>Term 2</dt
      ><dt>Term 2a</dt
      ><dt>Term 2b</dt
      ><dd>Definition a</dd
    ></dl
    ><p>This is a paragraph</p
    ><dl
      ><dt>This is a term</dt
      ><dd
        ><p>definition</p
      ></dd
    ></dl
  >
*** Output of to_latex ***
\begin{description}

\item[Apple] Pomaceous fruit of plants of the genus Malus in the family Rosaceae. 

\item[Orange] The fruit of an evergreen tree of the genus Citrus. 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Apple] Pomaceous fruit of plants of the genus Malus in the family Rosaceae 

\item[Orange] The fruit of an evergreen tree of the genus Citrus. 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Apple] Pomaceous fruit of plants of the genus Malus in the family Rosaceae. 
An american computer company. 

\item[Orange] The fruit of an evergreen tree of the genus Citrus. 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Term 1] 
\item[Term 2] Definition a 

\item[Term 3] Definition b 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Term 1] 
\item[Term 2] 
\item[Term 2a] 
\item[Term 2b] Definition a 

\item[Term 3] Definition b 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Apple] Pomaceous fruit of plants of the genus Malus in the family Rosaceae.

 

\item[Orange] The fruit of an evergreen tree of the genus Citrus.

 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Term 1] This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.

Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.

 
Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it.

 

\item[Term 2] This definition has a code block, a blockquote and a list.

\begin{verbatim}code block.
\end{verbatim}
\begin{quote}%
block quote on two lines.


\end{quote}
\begin{enumerate}%
\item first list item
\item second list item

\end{enumerate}
 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Term 1] 
\item[Term 2] 
\item[Term 2a] 
\item[Term 2b] Definition a 
\end{description}
This is a paragraph

\begin{description}

\item[This is a term] definition

 
\end{description}

*** Output of to_s ***
ApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.OrangeThe fruit of an evergreen tree of the genus Citrus.ApplePomaceous fruit of plants of the genus Malus in the family RosaceaeOrangeThe fruit of an evergreen tree of the genus Citrus.ApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.An american computer company.OrangeThe fruit of an evergreen tree of the genus Citrus.Term 1Term 2Definition aTerm 3Definition bTerm 1Term 2Term 2aTerm 2bDefinition aTerm 3Definition bApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.OrangeThe fruit of an evergreen tree of the genus Citrus.Term 1This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it.Term 2This definition has a code block, a blockquote and a list.block quote on two lines.first list itemsecond list itemTerm 1Term 2Term 2aTerm 2bDefinition aThis is a paragraphThis is a termdefinition
*** Output of to_s ***
ApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.OrangeThe fruit of an evergreen tree of the genus Citrus.ApplePomaceous fruit of plants of the genus Malus in the family RosaceaeOrangeThe fruit of an evergreen tree of the genus Citrus.ApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.An american computer company.OrangeThe fruit of an evergreen tree of the genus Citrus.Term 1Term 2Definition aTerm 3Definition bTerm 1Term 2Term 2aTerm 2bDefinition aTerm 3Definition bApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.OrangeThe fruit of an evergreen tree of the genus Citrus.Term 1This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it.Term 2This definition has a code block, a blockquote and a list.block quote on two lines.first list itemsecond list itemTerm 1Term 2Term 2aTerm 2bDefinition aThis is a paragraphThis is a termdefinition
*** Output of inspect ***
MDElement.new(:document,[	
	MDElement.new(:definition_list,[	
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Apple"
			], {}),
			
			MDElement.new(:definition_data,[	
				"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."
		], {})], :want_my_paragraph=>false, :terms=>[MDElement.new(:definition_term,[	
			"Apple"
		], {})]}),
		
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Orange"
			], {}),
			
			MDElement.new(:definition_data,[	
				"The fruit of an evergreen tree of the genus Citrus."
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			"The fruit of an evergreen tree of the genus Citrus."
		], {})], :want_my_paragraph=>false, :terms=>[MDElement.new(:definition_term,[	
			"Orange"
		], {})]})
	], {}),
	
	MDElement.new(:hrule,[],{}),
	
	MDElement.new(:definition_list,[	
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Apple"
			], {}),
			
			MDElement.new(:definition_data,[	
				"Pomaceous fruit of plants of the genus Malus in the family Rosaceae"
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			"Pomaceous fruit of plants of the genus Malus in the family Rosaceae"
		], {})], :want_my_paragraph=>false, :terms=>[MDElement.new(:definition_term,[	
			"Apple"
		], {})]}),
		
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Orange"
			], {}),
			
			MDElement.new(:definition_data,[	
				"The fruit of an evergreen tree of the genus Citrus."
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			"The fruit of an evergreen tree of the genus Citrus."
		], {})], :want_my_paragraph=>false, :terms=>[MDElement.new(:definition_term,[	
			"Orange"
		], {})]})
	], {}),
	
	MDElement.new(:hrule,[],{}),
	
	MDElement.new(:definition_list,[	
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Apple"
			], {}),
			
			MDElement.new(:definition_data,[	
				"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."
			], {}),
			
			MDElement.new(:definition_data,[	
				"An american computer company."
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."
		], {}), MDElement.new(:definition_data,[	
			"An american computer company."
		], {})], :want_my_paragraph=>false, :terms=>[MDElement.new(:definition_term,[	
			"Apple"
		], {})]}),
		
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Orange"
			], {}),
			
			MDElement.new(:definition_data,[	
				"The fruit of an evergreen tree of the genus Citrus."
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			"The fruit of an evergreen tree of the genus Citrus."
		], {})], :want_my_paragraph=>false, :terms=>[MDElement.new(:definition_term,[	
			"Orange"
		], {})]})
	], {}),
	
	MDElement.new(:hrule,[],{}),
	
	MDElement.new(:definition_list,[	
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Term 1"
			], {}),
			
			MDElement.new(:definition_term,[	
				"Term 2"
			], {}),
			
			MDElement.new(:definition_data,[	
				"Definition a"
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			"Definition a"
		], {})], :want_my_paragraph=>false, :terms=>[MDElement.new(:definition_term,[	
			"Term 1"
		], {}), MDElement.new(:definition_term,[	
			"Term 2"
		], {})]}),
		
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Term 3"
			], {}),
			
			MDElement.new(:definition_data,[	
				"Definition b"
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			"Definition b"
		], {})], :want_my_paragraph=>false, :terms=>[MDElement.new(:definition_term,[	
			"Term 3"
		], {})]})
	], {}),
	
	MDElement.new(:hrule,[],{}),
	
	MDElement.new(:definition_list,[	
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Term 1"
			], {}),
			
			MDElement.new(:definition_term,[	
				"Term 2"
			], {}),
			
			MDElement.new(:definition_term,[	
				"Term 2a"
			], {}),
			
			MDElement.new(:definition_term,[	
				"Term 2b"
			], {}),
			
			MDElement.new(:definition_data,[	
				"Definition a"
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			"Definition a"
		], {})], :want_my_paragraph=>false, :terms=>[MDElement.new(:definition_term,[	
			"Term 1"
		], {}), MDElement.new(:definition_term,[	
			"Term 2"
		], {}), MDElement.new(:definition_term,[	
			"Term 2a"
		], {}), MDElement.new(:definition_term,[	
			"Term 2b"
		], {})]}),
		
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Term 3"
			], {}),
			
			MDElement.new(:definition_data,[	
				"Definition b"
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			"Definition b"
		], {})], :want_my_paragraph=>false, :terms=>[MDElement.new(:definition_term,[	
			"Term 3"
		], {})]})
	], {}),
	
	MDElement.new(:hrule,[],{}),
	
	MDElement.new(:definition_list,[	
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Apple"
			], {}),
			
			MDElement.new(:definition_data,[	
				MDElement.new(:paragraph,[	
					"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."
				], {})
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			MDElement.new(:paragraph,[	
				"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."
			], {})
		], {})], :want_my_paragraph=>true, :terms=>[MDElement.new(:definition_term,[	
			"Apple"
		], {})]}),
		
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Orange"
			], {}),
			
			MDElement.new(:definition_data,[	
				MDElement.new(:paragraph,[	
					"The fruit of an evergreen tree of the genus Citrus."
				], {})
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			MDElement.new(:paragraph,[	
				"The fruit of an evergreen tree of the genus Citrus."
			], {})
		], {})], :want_my_paragraph=>true, :terms=>[MDElement.new(:definition_term,[	
			"Orange"
		], {})]})
	], {}),
	
	MDElement.new(:hrule,[],{}),
	
	MDElement.new(:definition_list,[	
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Term 1"
			], {}),
			
			MDElement.new(:definition_data,[	
				MDElement.new(:paragraph,[	
					"This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus."
				], {}),
				
				MDElement.new(:paragraph,[	
					"Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus."
				], {})
			], {}),
			
			MDElement.new(:definition_data,[	
				MDElement.new(:paragraph,[	
					"Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it."
				], {})
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			MDElement.new(:paragraph,[	
				"This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus."
			], {}),
			
			MDElement.new(:paragraph,[	
				"Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus."
			], {})
		], {}), MDElement.new(:definition_data,[	
			MDElement.new(:paragraph,[	
				"Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it."
			], {})
		], {})], :want_my_paragraph=>true, :terms=>[MDElement.new(:definition_term,[	
			"Term 1"
		], {})]}),
		
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Term 2"
			], {}),
			
			MDElement.new(:definition_data,[	
				MDElement.new(:paragraph,[	
					"This definition has a code block, a blockquote and a list."
				], {}),
				
				MDElement.new(:code,[],{:raw_code=>"code block.\n"}),
				
				MDElement.new(:quote,[	
					MDElement.new(:paragraph,[	
						"block quote on two lines."
					], {})
				], {}),
				
				MDElement.new(:ol,[	
					MDElement.new(:li_span,[	
						"first list item"
					], {:want_my_paragraph=>false}),
					
					MDElement.new(:li_span,[	
						"second list item"
					], {:want_my_paragraph=>false})
				], {})
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			MDElement.new(:paragraph,[	
				"This definition has a code block, a blockquote and a list."
			], {}),
			
			MDElement.new(:code,[],{:raw_code=>"code block.\n"}),
			
			MDElement.new(:quote,[	
				MDElement.new(:paragraph,[	
					"block quote on two lines."
				], {})
			], {}),
			
			MDElement.new(:ol,[	
				MDElement.new(:li_span,[	
					"first list item"
				], {:want_my_paragraph=>false}),
				
				MDElement.new(:li_span,[	
					"second list item"
				], {:want_my_paragraph=>false})
			], {})
		], {})], :want_my_paragraph=>true, :terms=>[MDElement.new(:definition_term,[	
			"Term 2"
		], {})]})
	], {}),
	
	MDElement.new(:hrule,[],{}),
	
	MDElement.new(:definition_list,[	
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"Term 1"
			], {}),
			
			MDElement.new(:definition_term,[	
				"Term 2"
			], {}),
			
			MDElement.new(:definition_term,[	
				"Term 2a"
			], {}),
			
			MDElement.new(:definition_term,[	
				"Term 2b"
			], {}),
			
			MDElement.new(:definition_data,[	
				"Definition a"
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			"Definition a"
		], {})], :want_my_paragraph=>false, :terms=>[MDElement.new(:definition_term,[	
			"Term 1"
		], {}), MDElement.new(:definition_term,[	
			"Term 2"
		], {}), MDElement.new(:definition_term,[	
			"Term 2a"
		], {}), MDElement.new(:definition_term,[	
			"Term 2b"
		], {})]})
	], {}),
	
	MDElement.new(:paragraph,[	
		"This is a paragraph"
	], {}),
	
	MDElement.new(:definition_list,[	
		MDElement.new(:definition,[	
			MDElement.new(:definition_term,[	
				"This is a term"
			], {}),
			
			MDElement.new(:definition_data,[	
				MDElement.new(:paragraph,[	
					"definition"
				], {})
			], {})
		], {:definitions=>[MDElement.new(:definition_data,[	
			MDElement.new(:paragraph,[	
				"definition"
			], {})
		], {})], :want_my_paragraph=>true, :terms=>[MDElement.new(:definition_term,[	
			"This is a term"
		], {})]})
	], {})
], {:css=>"style.css"})
*** EOF ***




Failed tests:   [:inspect] 
And the following are the actual outputs for methods:
   [:to_html, :to_latex, :to_s, :to_s, :inspect]:


*** Output of to_html ***
<dl
      ><dt>Apple</dt
      ><dd>Pomaceous fruit of plants of the genus Malus in the family Rosaceae.</dd
      ><dt>Orange</dt
      ><dd>The fruit of an evergreen tree of the genus Citrus.</dd
    ></dl
    ><hr
    /><dl
      ><dt>Apple</dt
      ><dd>Pomaceous fruit of plants of the genus Malus in the family Rosaceae</dd
      ><dt>Orange</dt
      ><dd>The fruit of an evergreen tree of the genus Citrus.</dd
    ></dl
    ><hr
    /><dl
      ><dt>Apple</dt
      ><dd>Pomaceous fruit of plants of the genus Malus in the family Rosaceae.</dd
      ><dd>An american computer company.</dd
      ><dt>Orange</dt
      ><dd>The fruit of an evergreen tree of the genus Citrus.</dd
    ></dl
    ><hr
    /><dl
      ><dt>Term 1</dt
      ><dt>Term 2</dt
      ><dd>Definition a</dd
      ><dt>Term 3</dt
      ><dd>Definition b</dd
    ></dl
    ><hr
    /><dl
      ><dt>Term 1</dt
      ><dt>Term 2</dt
      ><dt>Term 2a</dt
      ><dt>Term 2b</dt
      ><dd>Definition a</dd
      ><dt>Term 3</dt
      ><dd>Definition b</dd
    ></dl
    ><hr
    /><dl
      ><dt>Apple</dt
      ><dd
        ><p>Pomaceous fruit of plants of the genus Malus in the family Rosaceae.</p
      ></dd
      ><dt>Orange</dt
      ><dd
        ><p>The fruit of an evergreen tree of the genus Citrus.</p
      ></dd
    ></dl
    ><hr
    /><dl
      ><dt>Term 1</dt
      ><dd
        ><p>This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.</p
        ><p>Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.</p
      ></dd
      ><dd
        ><p>Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it.</p
      ></dd
      ><dt>Term 2</dt
      ><dd
        ><p>This definition has a code block, a blockquote and a list.</p
        ><pre
          ><code>code block.
</code
        ></pre
        ><blockquote
          ><p>block quote on two lines.</p
        ></blockquote
        ><ol
          ><li>first list item</li
          ><li>second list item</li
        ></ol
      ></dd
    ></dl
    ><hr
    /><dl
      ><dt>Term 1</dt
      ><dt>Term 2</dt
      ><dt>Term 2a</dt
      ><dt>Term 2b</dt
      ><dd>Definition a</dd
    ></dl
    ><p>This is a paragraph</p
    ><dl
      ><dt>This is a term</dt
      ><dd
        ><p>definition</p
      ></dd
    ></dl
  >
*** Output of to_latex ***
\begin{description}

\item[Apple] Pomaceous fruit of plants of the genus Malus in the family Rosaceae. 

\item[Orange] The fruit of an evergreen tree of the genus Citrus. 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Apple] Pomaceous fruit of plants of the genus Malus in the family Rosaceae 

\item[Orange] The fruit of an evergreen tree of the genus Citrus. 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Apple] Pomaceous fruit of plants of the genus Malus in the family Rosaceae. 
An american computer company. 

\item[Orange] The fruit of an evergreen tree of the genus Citrus. 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Term 1] 
\item[Term 2] Definition a 

\item[Term 3] Definition b 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Term 1] 
\item[Term 2] 
\item[Term 2a] 
\item[Term 2b] Definition a 

\item[Term 3] Definition b 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Apple] Pomaceous fruit of plants of the genus Malus in the family Rosaceae.

 

\item[Orange] The fruit of an evergreen tree of the genus Citrus.

 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Term 1] This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.

Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.

 
Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it.

 

\item[Term 2] This definition has a code block, a blockquote and a list.

\begin{verbatim}code block.
\end{verbatim}
\begin{quote}%
block quote on two lines.


\end{quote}
\begin{enumerate}%
\item first list item
\item second list item

\end{enumerate}
 
\end{description}

\vspace{.5em} \hrule \vspace{.5em}
\begin{description}

\item[Term 1] 
\item[Term 2] 
\item[Term 2a] 
\item[Term 2b] Definition a 
\end{description}
This is a paragraph

\begin{description}

\item[This is a term] definition

 
\end{description}

*** Output of to_s ***
ApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.OrangeThe fruit of an evergreen tree of the genus Citrus.ApplePomaceous fruit of plants of the genus Malus in the family RosaceaeOrangeThe fruit of an evergreen tree of the genus Citrus.ApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.An american computer company.OrangeThe fruit of an evergreen tree of the genus Citrus.Term 1Term 2Definition aTerm 3Definition bTerm 1Term 2Term 2aTerm 2bDefinition aTerm 3Definition bApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.OrangeThe fruit of an evergreen tree of the genus Citrus.Term 1This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it.Term 2This definition has a code block, a blockquote and a list.block quote on two lines.first list itemsecond list itemTerm 1Term 2Term 2aTerm 2bDefinition aThis is a paragraphThis is a termdefinition
*** Output of to_s ***
ApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.OrangeThe fruit of an evergreen tree of the genus Citrus.ApplePomaceous fruit of plants of the genus Malus in the family RosaceaeOrangeThe fruit of an evergreen tree of the genus Citrus.ApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.An american computer company.OrangeThe fruit of an evergreen tree of the genus Citrus.Term 1Term 2Definition aTerm 3Definition bTerm 1Term 2Term 2aTerm 2bDefinition aTerm 3Definition bApplePomaceous fruit of plants of the genus Malus in the family Rosaceae.OrangeThe fruit of an evergreen tree of the genus Citrus.Term 1This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it.Term 2This definition has a code block, a blockquote and a list.block quote on two lines.first list itemsecond list itemTerm 1Term 2Term 2aTerm 2bDefinition aThis is a paragraphThis is a termdefinition
*** Output of inspect ***
-----| WARNING | -----
md_el(:document,[
	md_el(:definition_list,[
		md_el(:definition,[
			md_el(:definition_term,[	"Apple"]),
			md_el(:definition_data,[	"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."])
		], {:definitions=>[md_el(:definition_data,[	"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."])], :want_my_paragraph=>false, :terms=>[md_el(:definition_term,[	"Apple"])]}),
		md_el(:definition,[
			md_el(:definition_term,[	"Orange"]),
			md_el(:definition_data,[	"The fruit of an evergreen tree of the genus Citrus."])
		], {:definitions=>[md_el(:definition_data,[	"The fruit of an evergreen tree of the genus Citrus."])], :want_my_paragraph=>false, :terms=>[md_el(:definition_term,[	"Orange"])]})
	]),
	md_el(:hrule,[]),
	md_el(:definition_list,[
		md_el(:definition,[
			md_el(:definition_term,[	"Apple"]),
			md_el(:definition_data,[	"Pomaceous fruit of plants of the genus Malus in the family Rosaceae"])
		], {:definitions=>[md_el(:definition_data,[	"Pomaceous fruit of plants of the genus Malus in the family Rosaceae"])], :want_my_paragraph=>false, :terms=>[md_el(:definition_term,[	"Apple"])]}),
		md_el(:definition,[
			md_el(:definition_term,[	"Orange"]),
			md_el(:definition_data,[	"The fruit of an evergreen tree of the genus Citrus."])
		], {:definitions=>[md_el(:definition_data,[	"The fruit of an evergreen tree of the genus Citrus."])], :want_my_paragraph=>false, :terms=>[md_el(:definition_term,[	"Orange"])]})
	]),
	md_el(:hrule,[]),
	md_el(:definition_list,[
		md_el(:definition,[
			md_el(:definition_term,[	"Apple"]),
			md_el(:definition_data,[	"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."]),
			md_el(:definition_data,[	"An american computer company."])
		], {:definitions=>[md_el(:definition_data,[	"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."]), md_el(:definition_data,[	"An american computer company."])], :want_my_paragraph=>false, :terms=>[md_el(:definition_term,[	"Apple"])]}),
		md_el(:definition,[
			md_el(:definition_term,[	"Orange"]),
			md_el(:definition_data,[	"The fruit of an evergreen tree of the genus Citrus."])
		], {:definitions=>[md_el(:definition_data,[	"The fruit of an evergreen tree of the genus Citrus."])], :want_my_paragraph=>false, :terms=>[md_el(:definition_term,[	"Orange"])]})
	]),
	md_el(:hrule,[]),
	md_el(:definition_list,[
		md_el(:definition,[
			md_el(:definition_term,[	"Term 1"]),
			md_el(:definition_term,[	"Term 2"]),
			md_el(:definition_data,[	"Definition a"])
		], {:definitions=>[md_el(:definition_data,[	"Definition a"])], :want_my_paragraph=>false, :terms=>[md_el(:definition_term,[	"Term 1"]), md_el(:definition_term,[	"Term 2"])]}),
		md_el(:definition,[
			md_el(:definition_term,[	"Term 3"]),
			md_el(:definition_data,[	"Definition b"])
		], {:definitions=>[md_el(:definition_data,[	"Definition b"])], :want_my_paragraph=>false, :terms=>[md_el(:definition_term,[	"Term 3"])]})
	]),
	md_el(:hrule,[]),
	md_el(:definition_list,[
		md_el(:definition,[
			md_el(:definition_term,[	"Term 1"]),
			md_el(:definition_term,[	"Term 2"]),
			md_el(:definition_term,[	"Term 2a"]),
			md_el(:definition_term,[	"Term 2b"]),
			md_el(:definition_data,[	"Definition a"])
		], {:definitions=>[md_el(:definition_data,[	"Definition a"])], :want_my_paragraph=>false, :terms=>[md_el(:definition_term,[	"Term 1"]), md_el(:definition_term,[	"Term 2"]), md_el(:definition_term,[	"Term 2a"]), md_el(:definition_term,[	"Term 2b"])]}),
		md_el(:definition,[
			md_el(:definition_term,[	"Term 3"]),
			md_el(:definition_data,[	"Definition b"])
		], {:definitions=>[md_el(:definition_data,[	"Definition b"])], :want_my_paragraph=>false, :terms=>[md_el(:definition_term,[	"Term 3"])]})
	]),
	md_el(:hrule,[]),
	md_el(:definition_list,[
		md_el(:definition,[
			md_el(:definition_term,[	"Apple"]),
			md_el(:definition_data,[	md_el(:paragraph,[	"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."])])
		], {:definitions=>[md_el(:definition_data,[	md_el(:paragraph,[	"Pomaceous fruit of plants of the genus Malus in the family Rosaceae."])])], :want_my_paragraph=>true, :terms=>[md_el(:definition_term,[	"Apple"])]}),
		md_el(:definition,[
			md_el(:definition_term,[	"Orange"]),
			md_el(:definition_data,[	md_el(:paragraph,[	"The fruit of an evergreen tree of the genus Citrus."])])
		], {:definitions=>[md_el(:definition_data,[	md_el(:paragraph,[	"The fruit of an evergreen tree of the genus Citrus."])])], :want_my_paragraph=>true, :terms=>[md_el(:definition_term,[	"Orange"])]})
	]),
	md_el(:hrule,[]),
	md_el(:definition_list,[
		md_el(:definition,[
			md_el(:definition_term,[	"Term 1"]),
			md_el(:definition_data,[
				md_el(:paragraph,[	"This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus."]),
				md_el(:paragraph,[	"Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus."])
			]),
			md_el(:definition_data,[	md_el(:paragraph,[	"Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it."])])
		], {:definitions=>[md_el(:definition_data,[
			md_el(:paragraph,[	"This is a definition with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus."]),
			md_el(:paragraph,[	"Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus."])
		]), md_el(:definition_data,[	md_el(:paragraph,[	"Second definition for term 1, also wrapped in a paragraph because of the blank line preceding it."])])], :want_my_paragraph=>true, :terms=>[md_el(:definition_term,[	"Term 1"])]}),
		md_el(:definition,[
			md_el(:definition_term,[	"Term 2"]),
			md_el(:definition_data,[
				md_el(:paragraph,[	"This definition has a code block, a blockquote and a list."]),
				md_el(:code,[], {:raw_code=>"code block.\n"}),
				md_el(:quote,[	md_el(:paragraph,[	"block quote on two lines."])]),
				md_el(:ol,[
					md_el(:li_span,[	"first list item"], {:want_my_paragraph=>false}),
					md_el(:li_span,[	"second list item"], {:want_my_paragraph=>false})
				])
			])
		], {:definitions=>[md_el(:definition_data,[
			md_el(:paragraph,[	"This definition has a code block, a blockquote and a list."]),
			md_el(:code,[], {:raw_code=>"code block.\n"}),
			md_el(:quote,[	md_el(:paragraph,[	"block quote on two lines."])]),
			md_el(:ol,[
				md_el(:li_span,[	"first list item"], {:want_my_paragraph=>false}),
				md_el(:li_span,[	"second list item"], {:want_my_paragraph=>false})
			])
		])], :want_my_paragraph=>true, :terms=>[md_el(:definition_term,[	"Term 2"])]})
	]),
	md_el(:hrule,[]),
	md_el(:definition_list,[	md_el(:definition,[
			md_el(:definition_term,[	"Term 1"]),
			md_el(:definition_term,[	"Term 2"]),
			md_el(:definition_term,[	"Term 2a"]),
			md_el(:definition_term,[	"Term 2b"]),
			md_el(:definition_data,[	"Definition a"])
		], {:definitions=>[md_el(:definition_data,[	"Definition a"])], :want_my_paragraph=>false, :terms=>[md_el(:definition_term,[	"Term 1"]), md_el(:definition_term,[	"Term 2"]), md_el(:definition_term,[	"Term 2a"]), md_el(:definition_term,[	"Term 2b"])]})]),
	md_el(:paragraph,[	"This is a paragraph"]),
	md_el(:definition_list,[	md_el(:definition,[
			md_el(:definition_term,[	"This is a term"]),
			md_el(:definition_data,[	md_el(:paragraph,[	"definition"])])
		], {:definitions=>[md_el(:definition_data,[	md_el(:paragraph,[	"definition"])])], :want_my_paragraph=>true, :terms=>[md_el(:definition_term,[	"This is a term"])]})])
], {:css=>"style.css"})
*** Output of Markdown.pl ***
<p>CSS: style.css</p>

<p>Apple
:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.</p>

<p>Orange
:   The fruit of an evergreen tree of the genus Citrus.</p>

<hr />

<p>Apple
:   Pomaceous fruit of plants of the genus Malus in 
the family Rosaceae.</p>

<p>Orange
:   The fruit of an evergreen tree of the genus Citrus.</p>

<hr />

<p>Apple
:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.
:   An american computer company.</p>

<p>Orange
:   The fruit of an evergreen tree of the genus Citrus.</p>

<hr />

<p>Term 1
Term 2
:   Definition a</p>

<p>Term 3
:   Definition b</p>

<hr />

<p>Term 1
Term 2
Term 2a
Term 2b
:   Definition a</p>

<p>Term 3
:   Definition b</p>

<hr />

<p>Apple</p>

<p>:   Pomaceous fruit of plants of the genus Malus in 
    the family Rosaceae.</p>

<p>Orange</p>

<p>:    The fruit of an evergreen tree of the genus Citrus.</p>

<hr />

<p>Term 1</p>

<p>:   This is a definition with two paragraphs. Lorem ipsum 
    dolor sit amet, consectetuer adipiscing elit. Aliquam 
    hendrerit mi posuere lectus.</p>

<pre><code>Vestibulum enim wisi, viverra nec, fringilla in, laoreet
vitae, risus.
</code></pre>

<p>:   Second definition for term 1, also wrapped in a paragraph
    because of the blank line preceding it.</p>

<p>Term 2</p>

<p>:   This definition has a code block, a blockquote and a list.</p>

<pre><code>    code block.

&gt; block quote
&gt; on two lines.

1.  first list item
2.  second list item
</code></pre>

<hr />

<p>Term 1
Term 2
Term 2a
Term 2b
:   Definition a</p>

<p>This is a paragraph</p>

<p>This is a term</p>

<p>: definition</p>

*** Output of Markdown.pl (parsed) ***
<p>CSS: style.css</p
    ><p>Apple
: Pomaceous fruit of plants of the genus Malus in 
 the family Rosaceae.</p
    ><p>Orange
: The fruit of an evergreen tree of the genus Citrus.</p
    ><hr
    /><p>Apple
: Pomaceous fruit of plants of the genus Malus in 
the family Rosaceae.</p
    ><p>Orange
: The fruit of an evergreen tree of the genus Citrus.</p
    ><hr
    /><p>Apple
: Pomaceous fruit of plants of the genus Malus in 
 the family Rosaceae.
: An american computer company.</p
    ><p>Orange
: The fruit of an evergreen tree of the genus Citrus.</p
    ><hr
    /><p>Term 1
Term 2
: Definition a</p
    ><p>Term 3
: Definition b</p
    ><hr
    /><p>Term 1
Term 2
Term 2a
Term 2b
: Definition a</p
    ><p>Term 3
: Definition b</p
    ><hr
    /><p>Apple</p
    ><p>: Pomaceous fruit of plants of the genus Malus in 
 the family Rosaceae.</p
    ><p>Orange</p
    ><p>: The fruit of an evergreen tree of the genus Citrus.</p
    ><hr
    /><p>Term 1</p
    ><p>: This is a definition with two paragraphs. Lorem ipsum 
 dolor sit amet, consectetuer adipiscing elit. Aliquam 
 hendrerit mi posuere lectus.</p
    ><pre
      ><code>Vestibulum enim wisi, viverra nec, fringilla in, laoreet
vitae, risus.
</code
    ></pre
    ><p>: Second definition for term 1, also wrapped in a paragraph
 because of the blank line preceding it.</p
    ><p>Term 2</p
    ><p>: This definition has a code block, a blockquote and a list.</p
    ><pre
      ><code>    code block.

&gt; block quote
&gt; on two lines.

1.  first list item
2.  second list item
</code
    ></pre
    ><hr
    /><p>Term 1
Term 2
Term 2a
Term 2b
: Definition a</p
    ><p>This is a paragraph</p
    ><p>This is a term</p
    ><p>: definition</p
  >
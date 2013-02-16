PENDING - Nested list with a single item. https://github.com/bhollis/maruku/issues/64
*** Parameters: ***
{}
*** Markdown input: ***
A nested list with a single item (does not work)

- three items:
  - item 1
  - item 2
  - item 3
- one item:
  - item
- two items:
  - item a
  - item b

*** Output of inspect ***

*** Output of to_html ***
<p>A nested list with a single item (does not work)</p>

<ul>
<li>three items:

<ul>
<li>item 1</li>
<li>item 2</li>
<li>item 3</li>
</ul></li>
<li>one item:

<ul>
<li>item</li>
</ul></li>
<li>two items:

<ul>
<li>item a</li>
<li>item b</li>
</ul></li>
</ul>

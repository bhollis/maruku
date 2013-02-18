PENDING - Lists should be nestable to arbitrary depth.
*** Parameters: ***
{}
*** Markdown input: ***
This is a list:

* Space
  * Space
    * Space
      * Space
        * Space

*** Output of inspect ***
md_el(:document, [])
*** Output of to_html ***
<ul>
<li>Space

<ul>
<li>Space

<ul>
<li>Space

<ul>
<li>Space

<ul>
<li>Space</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
</ul>

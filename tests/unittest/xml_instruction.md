Directives should be preserved.
*** Parameters: ***
{}
*** Markdown input: ***

<? noTarget?> 
<?php ?> 
<?xml ?> 
<?mrk ?>

Targets <? noTarget?> <?php ?> <?xml ?> <?mrk ?>

Inside: <? puts "Inside: Hello" ?>{exec} last

after

<?mrk Time.now.year.to_s ?>          

Year is <?mrk Time.now.year.to_s ?>

<?maruku
	@doc.children.push md_par("A new paragraph")
?>

After 

*** Output of inspect ***
md_el(:document,[
	md_el(:xml_instr,[],{:code=>" noTarget",:target=>""},[]),
	md_el(:xml_instr,[],{:code=>"",:target=>"php"},[]),
	md_el(:xml_instr,[],{:code=>"",:target=>"xml"},[]),
	md_el(:xml_instr,[],{:code=>"",:target=>"mrk"},[]),
	md_par([
		"Targets ",
		md_el(:xml_instr,[],{:code=>"noTarget",:target=>""},[]),
		" ",
		md_el(:xml_instr,[],{:code=>"",:target=>"php"},[]),
		" ",
		md_el(:xml_instr,[],{:code=>"",:target=>"xml"},[]),
		" ",
		md_el(:xml_instr,[],{:code=>"",:target=>"mrk"},[])
	]),
	md_par([
		"Inside: ",
		md_el(:xml_instr,[],{:code=>"puts \"Inside: Hello\"",:target=>""},[[:ref, "exec"]]),
		md_ial([[:ref, "exec"]]),
		" last"
	]),
	md_par(["after"]),
	md_el(:xml_instr,[],{:code=>"Time.now.year.to_s ",:target=>"mrk"},[]),
	md_par([
		"Year is ",
		md_el(:xml_instr,[],{:code=>"Time.now.year.to_s",:target=>"mrk"},[])
	]),
	md_el(:xml_instr,[],{:code=>"\n\t@doc.children.push md_par(\"A new paragraph\")\n",:target=>"maruku"},[]),
	md_par(["After"]),
	md_par("A new paragraph")
],{},[])
*** Output of to_html ***
<? noTarget?><?php ?><?xml ?><?mrk ?>
<p>Targets <? noTarget?> <?php ?> <?xml ?> <?mrk ?></p>

<p>Inside: <? puts "Inside: Hello"?> last</p>

<p>after</p>
<?mrk Time.now.year.to_s?>
<p>Year is <?mrk Time.now.year.to_s?></p>
<?maruku @doc.children.push md_par("A new paragraph")?>
<p>After</p>

<p>A new paragraph</p>

*** Output of to_latex ***
Targets    

Inside:  last

after

Year is 

After

A new paragraph


*** Output of to_md ***
Targets

Inside: last

after

Year is

After

A new paragraph


*** Output of to_s ***
#<NoMethodError: undefined method `join' for "A new paragraph":String>
./lib/maruku/output/to_s.rb:32:in `children_to_s'
./lib/maruku/output/to_s.rb:28:in `to_s'
./lib/maruku/output/to_s.rb:32:in `join'
./lib/maruku/output/to_s.rb:32:in `children_to_s'
./lib/maruku/output/to_s.rb:28:in `to_s'
bin/marutest:67:in `send'
bin/marutest:67:in `run_test'
bin/marutest:62:in `each'
bin/marutest:62:in `run_test'
bin/marutest:235:in `marutest'
bin/marutest:233:in `each'
bin/marutest:233:in `marutest'
bin/marutest:303
*** EOF ***




Failed tests:   [] 

*** Output of inspect ***
md_el(:document,[
	md_el(:xml_instr,[],{:code=>" noTarget",:target=>""},[]),
	md_el(:xml_instr,[],{:code=>"",:target=>"php"},[]),
	md_el(:xml_instr,[],{:code=>"",:target=>"xml"},[]),
	md_el(:xml_instr,[],{:code=>"",:target=>"mrk"},[]),
	md_par([
		"Targets ",
		md_el(:xml_instr,[],{:code=>"noTarget",:target=>""},[]),
		" ",
		md_el(:xml_instr,[],{:code=>"",:target=>"php"},[]),
		" ",
		md_el(:xml_instr,[],{:code=>"",:target=>"xml"},[]),
		" ",
		md_el(:xml_instr,[],{:code=>"",:target=>"mrk"},[])
	]),
	md_par([
		"Inside: ",
		md_el(:xml_instr,[],{:code=>"puts \"Inside: Hello\"",:target=>""},[[:ref, "exec"]]),
		md_ial([[:ref, "exec"]]),
		" last"
	]),
	md_par(["after"]),
	md_el(:xml_instr,[],{:code=>"Time.now.year.to_s ",:target=>"mrk"},[]),
	md_par([
		"Year is ",
		md_el(:xml_instr,[],{:code=>"Time.now.year.to_s",:target=>"mrk"},[])
	]),
	md_el(:xml_instr,[],{:code=>"\n\t@doc.children.push md_par(\"A new paragraph\")\n",:target=>"maruku"},[]),
	md_par(["After"]),
	md_par("A new paragraph")
],{},[])
*** Output of to_html ***
<? noTarget?><?php ?><?xml ?><?mrk ?>
<p>Targets <? noTarget?> <?php ?> <?xml ?> <?mrk ?></p>

<p>Inside: <? puts "Inside: Hello"?> last</p>

<p>after</p>
<?mrk Time.now.year.to_s?>
<p>Year is <?mrk Time.now.year.to_s?></p>
<?maruku @doc.children.push md_par("A new paragraph")?>
<p>After</p>

<p>A new paragraph</p>

*** Output of to_latex ***
Targets    

Inside:  last

after

Year is 

After

A new paragraph


*** Output of to_md ***
Targets

Inside: last

after

Year is

After

A new paragraph


*** Output of to_s ***
#<NoMethodError: undefined method `join' for "A new paragraph":String>
./lib/maruku/output/to_s.rb:32:in `children_to_s'
./lib/maruku/output/to_s.rb:28:in `to_s'
./lib/maruku/output/to_s.rb:32:in `join'
./lib/maruku/output/to_s.rb:32:in `children_to_s'
./lib/maruku/output/to_s.rb:28:in `to_s'
bin/marutest:67:in `send'
bin/marutest:67:in `run_test'
bin/marutest:62:in `each'
bin/marutest:62:in `run_test'
bin/marutest:235:in `marutest'
bin/marutest:233:in `each'
bin/marutest:233:in `marutest'
bin/marutest:303
*** Output of Markdown.pl ***
<p><? noTarget?> 
<?php ?> 
<?xml ?> 
<?mrk ?></p>

<p>Targets <? noTarget?> <?php ?> <?xml ?> <?mrk ?></p>

<p>Inside: <? puts "Inside: Hello" ?>{exec} last</p>

<p>after</p>

<p><?mrk Time.now.year.to_s ?>          </p>

<p>Year is <?mrk Time.now.year.to_s ?></p>

<p><?maruku
    @doc.children.push md_par("A new paragraph")
?></p>

<p>After </p>

*** Output of Markdown.pl (parsed) ***
<p
     >     <? noTarget?>     <?php ?>     <?xml ?>     <?mrk ?></p
   ><p>Targets      <? noTarget?>     <?php ?>     <?xml ?>     <?mrk ?></p
   ><p>Inside:      <? puts "Inside: Hello"?>{exec} last</p
   ><p>after</p
   ><p
     >     <?mrk Time.now.year.to_s?></p
   ><p>Year is      <?mrk Time.now.year.to_s?></p
   ><p
     >     <?maruku @doc.children.push md_par("A new paragraph")?></p
   ><p>After </p
 >
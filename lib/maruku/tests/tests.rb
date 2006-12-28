
require 'maruku'

class Maruku
	
	
	def Maruku.failed(test, doc, s)
		raise "Test failed: #{s}\n*****\n#{test}\n*****\n"+
		"#{doc.inspect}\n*****\n{doc.to_html}"
	end

	def Maruku.metaTests
		ref = {:id => 'id1', :class => ['class1','class2'], 
			:style=> 'Style is : important = for all } things'}
	
		
		tests = MetaTests.split('***')
		for test in tests
			#puts "Test: #{test.inspect}"
			doc = Maruku.new(test)
			
			doc.children.size == 1 ||
			failed(test, doc, "children != 1") 
				
			
			h = doc.children[0]
			
			h.node_type==:header ||
			failed(test, doc, "child not header") 
			
#			puts doc.inspect
#			puts doc.to_html
		end
	end
	
MetaTests = <<EOF

# Head # {ref1 ref2 ref3}

{ref1}: id: id1; class: class1
{ref2}: class: class2
{ref3}: style: "Style is : important = for all } things"  

***

# Head # {ref1 ref3 ref2}

{ref1}: id: id1; class: class1
{ref2}: class: class2
{ref3}: style: "Style is : important = for all } things"  

***

# Head # {ref1 ref2 ref3}

{ref1}: id= id1; class=class1
{ref2}: class=class2
{ref3}: style="Style is : important = for all } things"

***

# Head # {ref1 ref2 ref3}

{ref1}: id=id1 class=class1
{ref2}: class=class2
{ref3}: style="Style is : important = for all } things"

***
# Head # {ref1 ref2 ref3}

{ref1}: id:id1	class:class1
{ref2}: class : class2
{ref3}: style	=	"Style is : important = for all } things"

***
# Head # {ref1 ref2 ref3}

{ref1}: id:id1	class:class1
  {ref2}: class : class2
   {ref3}: style	=	"Style is : important = for all } things"

***

# Head # {#id1 .class1 ref2 ref3}

{ref2}: class : class2
{ref3}: style	=	"Style is : important = for all } things"

***

# Head #  	 {  #id1	.class1	 	ref2	  ref3	}

{ref2}: class : class2
{ref3}: style	=	"Style is : important = for all } things"

***

# Head #  	 {  id=id1	class=class1	 	ref2	  ref3	}

{ref2}: class : class2
{ref3}: style	=	"Style is : important = for all } things"

***

# Head #  	 {  id:id1	class="class1" class:"class2"  style="Style is : important = for all } things"}

EOF

end

if File.basename($0) == 'tests.rb'
	Maruku.metaTests
	
end



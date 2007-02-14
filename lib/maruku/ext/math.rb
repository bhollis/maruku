

require 'maruku/ext/math/elements'
require 'maruku/ext/math/parsing'
require 'maruku/ext/math/to_latex'
require 'maruku/ext/math/to_html'

require 'maruku/ext/math/mathml_engines/none'
require 'maruku/ext/math/mathml_engines/ritex'
require 'maruku/ext/math/mathml_engines/itex2mml'
require 'maruku/ext/math/mathml_engines/blahtex'


=begin maruku_doc
Attribute: math_enabled
Scope: global, document, element
Summary: Enables parsing of LaTeX math 
Default: <?mrk md_code(Globals[:math_enabled].to_s) ?>

To explicitly disable the math parsing:

	Maruku.new(string, {:math_enabled => false})
	{:ruby}
	
=end

MaRuKu::Globals[:math_enabled] = true

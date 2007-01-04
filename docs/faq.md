Frequently asked questions
--------------------------


*	*Does Maruku supports internationalizations?*

	Maruku workflow:
	
	* input is assumed to be in UTF-8, unless an encoding 
	  is specified.
	* the internal representation is UTF-8.
	* the HTML output is in UTF-8.
	* the LaTeX output does not work yet for arbitrary
	  UTF-8 characters (please help me if you can).
	  
	The following are some examples of UTF-8 special chars:

	> Maruku in katakana: マルク  
	> Māku:　マーク  
	> Accented italian letters: àèéìòù  
	> Andrea Censi: アンドレア　チェンシ

	The internal format is again UTF-8.
	
	The HTML output is encoded in UTF-8, and
	the `encoding` is set in the xml header:
	
		<?xml version='1.0' encoding='utf-8'?>
		<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN'
	
	 However, the LaTeX output does not work yet for arbitrary
	 UTF-8 strings. I need help for this.

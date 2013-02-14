0.7.0
-----

* Maruku now uses Nokogiri to parse and output HTML, fixing many bugs and
  providing a big speedup.
	
* JRuby no longer obfuscates email addresses due to a Nokogiri bug.

* Maruku produces unicode characters in the output HTML in many cases where
  before it produced XML entity references.

* Empty link references now match the way other Markdown implementations work.

* Maruku now requires Ruby 1.8.7 or newer.

* Maruku no longer extends NilType or String with its own internal-use methods.

* Backtick-style (```) and tilde-style (~~~) fenced code blocks are now supported, including the
  language option (```ruby). They must be enabled using the
  :fenced_code_blocks option.

0.6.1
-----

* Fix iconv warning in Ruby 1.9.

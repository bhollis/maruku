0.7.0
-----

* Maruku now uses Nokogiri to parse and output HTML, fixing many bugs and
  providing a big speedup.
	
* JRuby no longer obfuscates email addresses due to a Nokogiri bug.

* Maruku produces unicode characters in the output HTML in many cases where
  before it produced XML entity references.

* Empty link references now match the way other Markdown implementations work.

* Maruku now requires Ruby 1.8.7 or newer.

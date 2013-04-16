module MaRuKu

  Globals = {
    :unsafe_features => false,
    :on_error => :warning,

    :use_numbered_headers => false,

    :maruku_signature => false,
    :code_background_color => '#fef',
    :code_show_spaces => false,

    :filter_html => false,

    :html_math_output_mathml => true, # also set :html_math_engine
    :html_math_engine => 'itex2mml', # none, ritex, itex2mml

    :html_math_output_png => false,
    :html_png_engine => 'none',
    :html_png_dir => 'pngs',
    :html_png_url => 'pngs/',
    :html_png_resolution => 200,

    :fenced_code_blocks => true, 
    :html_use_syntax => true,

    :latex_use_listings => false,
    :latex_cjk => false,
    :latex_cache_file  => "blahtex_cache.pstore", # cache file for blahtex filter

    :debug_keep_ials => false,
    :doc_prefix => '',

    :ignore_wikilinks => true
  }

  class MDElement
    def get_setting(sym)
      return attributes[sym] if attributes.has_key?(sym)
      return doc.attributes[sym] if doc && doc.attributes.has_key?(sym)
      return MaRuKu::Globals[sym] if MaRuKu::Globals.has_key?(sym)

      $stderr.puts "Bug: no default for #{sym.inspect}"
      nil
    end
  end

end

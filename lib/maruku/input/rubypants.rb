#
# NOTA BENE:
#
# The following algorithm is a rip-off of RubyPants written by
# Christian Neukirchen.
#
# RubyPants is a Ruby port of SmartyPants written by John Gruber.
#
# This file is distributed under the MIT license, which is compatible
# with the terms of the RubyPants license (3-clause BSD).
#
# -- Andrea Censi


# = RubyPants -- SmartyPants ported to Ruby
#
# Ported by Christian Neukirchen <mailto:chneukirchen@gmail.com>
#   Copyright (C) 2004 Christian Neukirchen
#
# Incooporates ideas, comments and documentation by Chad Miller
#   Copyright (C) 2004 Chad Miller
#
# Original SmartyPants by John Gruber
#   Copyright (C) 2003 John Gruber
#

#
# = RubyPants -- SmartyPants ported to Ruby
#
#
# [snip]
#
# == Authors
#
# John Gruber did all of the hard work of writing this software in
# Perl for Movable Type and almost all of this useful documentation.
# Chad Miller ported it to Python to use with Pyblosxom.
#
# Christian Neukirchen provided the Ruby port, as a general-purpose
# library that follows the *Cloth API.
#
#
# == Copyright and License
#
# === SmartyPants license:
#
# Copyright (c) 2003 John Gruber
# (http://daringfireball.net)
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# * Redistributions of source code must retain the above copyright
#   notice, this list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright
#   notice, this list of conditions and the following disclaimer in
#   the documentation and/or other materials provided with the
#   distribution.
#
# * Neither the name "SmartyPants" nor the names of its contributors
#   may be used to endorse or promote products derived from this
#   software without specific prior written permission.
#
# This software is provided by the copyright holders and contributors
# "as is" and any express or implied warranties, including, but not
# limited to, the implied warranties of merchantability and fitness
# for a particular purpose are disclaimed. In no event shall the
# copyright owner or contributors be liable for any direct, indirect,
# incidental, special, exemplary, or consequential damages (including,
# but not limited to, procurement of substitute goods or services;
# loss of use, data, or profits; or business interruption) however
# caused and on any theory of liability, whether in contract, strict
# liability, or tort (including negligence or otherwise) arising in
# any way out of the use of this software, even if advised of the
# possibility of such damage.
#
# === RubyPants license
#
# RubyPants is a derivative work of SmartyPants and smartypants.py.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# * Redistributions of source code must retain the above copyright
#   notice, this list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright
#   notice, this list of conditions and the following disclaimer in
#   the documentation and/or other materials provided with the
#   distribution.
#
# This software is provided by the copyright holders and contributors
# "as is" and any express or implied warranties, including, but not
# limited to, the implied warranties of merchantability and fitness
# for a particular purpose are disclaimed. In no event shall the
# copyright owner or contributors be liable for any direct, indirect,
# incidental, special, exemplary, or consequential damages (including,
# but not limited to, procurement of substitute goods or services;
# loss of use, data, or profits; or business interruption) however
# caused and on any theory of liability, whether in contract, strict
# liability, or tort (including negligence or otherwise) arising in
# any way out of the use of this software, even if advised of the
# possibility of such damage.
#
#
# == Links
#
# John Gruber:: http://daringfireball.net
# SmartyPants:: http://daringfireball.net/projects/smartypants
#
# Chad Miller:: http://web.chad.org
#
# Christian Neukirchen:: http://kronavita.de/chris


module MaRuKu::In::Markdown::SpanLevelParser
  Punct_class = '[!"#\$\%\'()*+,\-.\/:;<=>?\@\[\\\\\]\^_`{|}~]'
  Close_class = "[^\ \t\r\n\\[\{\(\-]"

  # A rule to apply a particular pattern (like double quotes)
  # against a list of strings and MDElements, replacing that
  # pattern with the smartypants version.
  class Rule
    # The pattern to search for
    attr_accessor :pattern

    # The replacement tokens (entities or other instructions)
    attr_accessor :replacement

    # This is a hack to allow us to build entities.
    attr_accessor :doc

    def initialize(pattern, replacement)
      @pattern = pattern
      @replacement = replacement
    end

    private

    # Add something to the output array. If it's
    # not a string (like an MDElement) just add it direcltly,
    # otherwise attempt to add on to the last element in the
    # output if it's a string.
    def append_to_output(output, str)
      if !str.kind_of?(String)
        output << str
        return
      end
      return if str.empty?
      if output.last.kind_of?(String)
        output.last << str
      else
        output << str
      end
    end
  end

  # Simple rule that says "Replace this pattern with these entities"
  class ReplaceRule < Rule
    # Replace all matches in the input at once with the
    # same elements from "replacement".
    def apply(first, input, output)
      intersperse(first.split(pattern), replacement).each do |x|
        append_to_output(output, x)
      end
    end

    private

    # Sort of like "join" - places the elements in "elem"
    # between each adjacent element in the array.
    def intersperse(ary, elem)
      return ary if ary.length <= 1
      h, *t = ary
      t.inject([h]) do |r, e|
        entities = elem.map do |el|
          en = el.clone
          en.doc = doc
          en
        end
        r.concat entities
        r << e
      end
    end
  end

  # A more complex rule that uses a capture group from the
  # pattern in its replacement.
  class CaptureRule < Rule
    # One at a time, replace each match, including
    # some part of the match, and put the rest back into
    # input to be processed next.
    def apply(first, input, output)
      if pattern =~ first
        m = Regexp.last_match
        append_to_output(output, m.pre_match)
        input.unshift m.post_match unless m.post_match.empty?
        replacement.reverse_each do |sub|
          if sub == :one
            input.unshift m[1]
          else
            entity = sub.clone
            sub.doc = doc
            input.unshift entity
          end
        end
      else
        append_to_output(output, first)
      end
    end
  end

  # All the rules that will be applied (in order) to smarten the document.
  Rules =
    [
     ['---',   :mdash          ],
     ['--',    :ndash          ],
     ['...',   :hellip         ],
     ['. . .', :hellip         ],
     ["``",    :ldquo          ],
     ["''",    :rdquo          ],
     [/<<\s/,  [:laquo, :nbsp] ],
     [/\s>>/,  [:nbsp, :raquo] ],
     ['<<',    :laquo          ],
     ['>>',    :raquo          ],

     # Special case if the very first character is a quote followed by
     # punctuation at a non-word-break. Close the quotes by brute
     # force:
     [/\A'(?=#{Punct_class}\B)/, :rsquo],
     [/\A"(?=#{Punct_class}\B)/, :rdquo],
     # Special case for double sets of quotes, e.g.:
     #   <p>He said, "'Quoted' words in a larger quote."</p>
     [/"'(?=\w)/, [:ldquo, :lsquo]    ],
     [/'"(?=\w)/, [:lsquo, :ldquo]    ],
     # Special case for decade abbreviations (the '80s):
     [/'(?=\d\ds)/, :rsquo            ],
     # Get most opening single quotes:
     [/(\s)'(?=\w)/, [:one, :lsquo]   ],
     # Single closing quotes:
     [/(#{Close_class})'/, [:one, :rsquo]],
     [/'(\s|s\b|$)/, [:rsquo, :one]],
     # Any remaining single quotes should be opening ones:
     ["'", :lsquo],
     # Get most opening double quotes:
     [/(\s)"(?=\w)/, [:one, :ldquo]],
     # Double closing quotes:
     [/(#{Close_class})"/, [:one, :rdquo]],
     [/"(\s|s\b|$)/, [:rdquo, :one]],
     # Any remaining quotes should be opening ones:
     ['"', :ldquo]
    ].
  map do |reg, subst| # People should do the thinking, machines should do the work.
    captures = false
    subst = Array(subst).map do |s|
      if s == :one
        captures = true
        s
      else
        MaRuKu::MDElement.new(:entity, [], { :entity_name => s.to_s.freeze }, nil)
      end
    end.freeze

    if captures
      CaptureRule.new reg, subst
    else
      ReplaceRule.new reg, subst
    end
  end

  # Fully apply a single rule to an entire array
  # of elements.
  # note: input will be modified in place
  def apply_one_rule!(rule, input)
    output = []
    while first = input.shift
      if first.kind_of?(String)
        rule.doc = @doc
        rule.apply(first, input, output)
      else
        output << first
      end
    end
    output
  end

  # Transform elements to have SmartyPants punctuation.
  def educate(elements)
    Rules.inject(elements) do |elems, rule|
      apply_one_rule!(rule, elems)
    end
  end
end

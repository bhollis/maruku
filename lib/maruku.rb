#   Copyright (C) 2006  Andrea Censi  <andrea (at) rubyforge.org>
#
# This file is part of Maruku.
# 
#   Maruku is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
# 
#   Maruku is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
# 
#   You should have received a copy of the GNU General Public License
#   along with Maruku; if not, write to the Free Software
#   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

# Structures definition
require 'maruku/structures'
require 'maruku/structures_inspect'
# Less typing
require 'maruku/helpers'

# Code for parsing whole Markdown documents
require 'maruku/parse_doc'

# Ugly things kept in a closet
require 'maruku/string_utils'

# A class for reading and sanitizing inline HTML
require 'maruku/html_helper'

# Code for parsing Markdown block-level elements
require 'maruku/parse_block'

# Code for parsing Markdown span-level elements
require 'maruku/charsource'
require 'maruku/parse_span_better'
require 'maruku/attributes'

require 'maruku/structures_iterators'

require 'maruku/errors_management'

# Code for creating a table of contents
require 'maruku/toc'

# Version and URL
require 'maruku/version'


# Exporting to html
require 'maruku/to_html'

# Exporting to latex
require 'maruku/to_latex'
require 'maruku/to_latex_strings'
require 'maruku/to_latex_entities'

# Pretty print
require 'maruku/to_markdown'

# Exporting to text: strips all formatting (not complete)
require 'maruku/to_s'

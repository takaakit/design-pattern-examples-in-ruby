#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'display'
require_relative 'multi_line_display'
require_relative 'text_display_impl'

# Display only one line or display the specified number of lines.

d_1 = Display.new(TextDisplayImpl.new("Japan"))
d_2 = MultiLineDisplay.new(TextDisplayImpl.new("The United States of America"))
d_3 = MultiLineDisplay.new(TextDisplayImpl.new("Brazil"))
d_1.display
d_2.display
d_3.display
d_3.display_multiple(3)

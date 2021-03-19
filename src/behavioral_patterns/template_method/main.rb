#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'char_display'
require_relative 'string_display'

=begin
Display a character or string repeatedly 5 times.
=end

display_1 = CharDisplay.new("H")
display_1.output

display_2 = StringDisplay.new("Hello world.")
display_2.output

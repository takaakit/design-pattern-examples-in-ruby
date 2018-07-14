#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'char_display'
require_relative 'string_display'

# Display the character and string repeatedly 5 times.

display_1 = CharDisplay.new("H")                   # Create an instance of the CharDisplay
display_2 = StringDisplay.new("Hello world.")      # Create an instance of the StringDisplay
display_3 = StringDisplay.new("Nice to meet you.") # Create an instance of the StringDisplay

# Any instance can be called with the same method name
display_1.output()
display_2.output()
display_3.output()

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'large_size_string'

=begin
Display a string consisting of large characters (0-9 digits only).
Large character objects are not created until they are needed.
And the created objects are reused.

Example Output
-----
Please enter digits (ex. 1212123): 123

     ####
      ###
      ###
      ###
      ###
      ###
    #######



   ########
         ###
         ###
   ########
  #
  #
  ##########



   ########
         ###
         ###
   ########
         ###
  #      ###
   ########
=end

puts "Please enter digits (ex. 1212123):"
input_value = gets.chomp

lss = LargeSizeString.new(input_value)
lss.display

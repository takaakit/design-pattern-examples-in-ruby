#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'large_size_string'

# First, create instances for displaying large size characters, then display large size character string using that instances.

puts "Please enter digits (ex. 1212123):"
input_value = gets.chomp

lss = LargeSizeString.new(input_value)
lss.display

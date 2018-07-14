#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'large_size_string'

# First, create instances for displaying large size characters, then display large size character string using that instances.

if ARGV.size() != 1
  puts "Usage: ruby main.rb digits"
  puts "Ex.  : ruby main.rb 1212123"
else
  bs = LargeSizeString.new(ARGV[0])
  bs.display
end

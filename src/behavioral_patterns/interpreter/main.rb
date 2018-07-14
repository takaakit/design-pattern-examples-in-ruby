#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'program'
require_relative 'context'

=begin
Analyze the syntax of the mini-language composed of "forward", "left", "right", and "repeat" commands.

-----
Examples before and after syntax analysis.
* Ex.1
Before : "program end"
After  : [program []]

* Ex.2
Before : "program forward right left end"
After  : [program [forward, right, left]]

* Ex.3
Before : "program repeat 4 forward right end end"
After  : [program [[repeat 4 [forward, right]]]]
=end

File.open(File.dirname(__FILE__) + "/program.txt", "r") do |f|
  f.each_line do |line|
    line = line.strip
    puts "TEXT > \"" + line + "\""
    node = Program.new()
    node.parse(Context.new(line))
    puts "NODE > " + node.to_string
  end
end

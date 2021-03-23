#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'proxy_printer'

=begin
Print on a named printer. Setting and changing the printer name is done by Proxy (ProxyPrinter).
At the time of printing, create an instance of the RealSubject (RealPrinter) for the first time.
=end

p = ProxyPrinter.new("PRINTER-A")
puts "The current printer is #{p.get_name}."
p.change_name("PRINTER-B")
puts "The current printer is #{p.get_name}."

puts "Print start."
p.output("Nice to meet you.")
puts "Print exit."

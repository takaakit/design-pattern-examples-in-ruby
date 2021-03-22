#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'printer_proxy'

=begin
Print on a named printer. Setting and changing the printer name is done by Proxy (PrinterProxy).
At the time of printing, create an instance of the RealSubject (RealPrinter) for the first time.
=end

p = PrinterProxy.new("PRINTER-A")
puts "The current printer is #{p.printer_name}."
p.printer_name = "PRINTER-B"
puts "The current printer is #{p.printer_name}."

puts "Print start."
p.output("Nice to meet you.")
puts "Print exit."

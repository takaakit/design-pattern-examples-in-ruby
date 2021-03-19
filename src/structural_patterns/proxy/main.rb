#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'printer_proxy'

# At the time of printing, create an instance of the printer for the first time.
# In order to spend time creating a printer, call a heavy task when creating a printer instance.

p = PrinterProxy.new("PRINTER-A")
puts "'The current printer is #{p.printer_name}."
p.printer_name = "PRINTER-B"
puts "'The current printer is #{p.printer_name}."

puts "Print start."
p.output("Nice to meet you.")
puts "Print exit."

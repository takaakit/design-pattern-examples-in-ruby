#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'pathname'
require_relative 'directory'
require_relative 'plain_text_builder'
require_relative 'html_builder'

# Create documents in HTML format and text format.

puts "Please enter \"plain\" or \"html\":"
input_value = gets.chomp

if input_value == "plain"
  plain_text_builder = PlainTextBuilder.new
  directory = Directory.new(plain_text_builder)
  directory.build
  content = plain_text_builder.content
  puts content
elsif input_value == "html"
  html_builder = HTMLBuilder.new
  directory = Directory.new(html_builder)
  directory.build
  file_name = html_builder.file_name
  puts "#{file_name} has been created."
  puts "Output File: #{Pathname.new(Dir.pwd).join(file_name)}"
else
  puts "The value is not \"plain\" or \"html\"."
  exit(1)
end

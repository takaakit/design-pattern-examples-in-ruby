#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'pathname'
require_relative 'director'
require_relative 'plain_text_builder'
require_relative 'html_builder'

=begin
Create documents in HTML format and text format. It is possible to create different documents
in the same construction process.
=end

puts "Please enter \"plain\" or \"html\":"
input_value = gets.chomp

case input_value
when "plain" then
  plain_text_builder = PlainTextBuilder.new
  directory = Director.new(plain_text_builder)
  directory.build
  content = plain_text_builder.content
  puts content
when "html" then
  html_builder = HTMLBuilder.new
  directory = Director.new(html_builder)
  directory.build
  file_name = html_builder.file_name
  puts "#{file_name} has been created."
  puts "Output File: #{Pathname.new(Dir.pwd).join(file_name)}"
else
  abort("The value is not \"plain\" or \"html\".")
end

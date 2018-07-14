#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'directory'
require_relative 'plain_text_builder'
require_relative 'html_builder'

# Create documents in HTML format and text format.

if ARGV.size() != 1
  puts "Usage 1: ruby main.rb plain      <- Create a document in plain text."
  puts "Usage 2: ruby main.rb html       <- Create a document in HTML."
elsif ARGV[0] == "plain"
  plain_text_builder = PlainTextBuilder.new()
  directory = Directory.new(plain_text_builder)
  directory.build
  content = plain_text_builder.result
  puts content
elsif ARGV[0] == "html"
  html_builder = HTMLBuilder.new()
  directory = Directory.new(html_builder)
  directory.build
  file_name = html_builder.result
  puts file_name + " has been created."
end

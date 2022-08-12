#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'factory/factory'
require_relative 'list_factory/list_factory'
require_relative 'table_factory/table_factory'

=begin
Create a hierarchical link collection as an HTML file. It can be created in either tabular or list format.
=end

puts "Please enter a number (1 or 2):"
puts "  1: Create objects by using ListFactory"
puts "  2: Create objects by using TableFactory"
number = gets.to_i

factory = nil
case number
when 1 then
  factory = ListFactory.new
when 2 then
  factory = TableFactory.new
else
  abort("The value is not 1 or 2.")
end

washington_post = factory.create_link("The Washington Post", "https://www.washingtonpost.com/")
new_york_times = factory.create_link("The NewYork Times", "https://www.nytimes.com/")
financial_times = factory.create_link("The Financial Times", "https://www.ft.com/")

newspaper = factory.create_data("Newspaper")
newspaper.add(washington_post)
newspaper.add(new_york_times)
newspaper.add(financial_times)

yahoo = factory.create_link("Yahoo!", "https://www.yahoo.com/")
google = factory.create_link("Google", "https://www.google.com/")

search_engine = factory.create_data("Search engine")
search_engine.add(yahoo)
search_engine.add(google)

link_page = factory.create_page("LinkPage", "James Smith")
link_page.add(newspaper)
link_page.add(search_engine)

link_page.output

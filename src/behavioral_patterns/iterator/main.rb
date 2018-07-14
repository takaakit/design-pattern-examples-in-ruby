#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'book'
require_relative 'book_shelf'
require_relative 'book_shelf_iterator'

# Add books in the bookshelf and display the names of the books in turn.

book_shelf = BookShelf.new(5)
book_shelf.add(Book.new("Design Patterns: Elements of Reusable Object-Oriented Software"))
book_shelf.add(Book.new("The Object Primer: Agile Model-Driven Development with UML 2.0"))
book_shelf.add(Book.new("Software Systems Architecture: Working With Stakeholders Using Viewpoints and Perspectives"))
book_shelf.add(Book.new("A Practical Guide to SysML: The Systems Modeling Language"))
book_shelf.add(Book.new("A Pattern Language: Towns, Buildings, Construction"))

it = book_shelf.iterator()
while it.has_next()
  book = it.next()
  puts book.title
end

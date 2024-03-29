#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'aggregate'
require_relative 'book'

# ˄

class BookShelf < Aggregate
  # ˅

  # ˄

  public
  attr_reader :number_of_books

  public
  def initialize(max_size)

    @number_of_books = 0

    @books = Array.new(max_size)

    # ˅

    # ˄
  end

  public
  def iterator
    # ˅
    BookShelfIterator.new(self)
    # ˄
  end

  public
  def get_at(index)
    # ˅
    @books.at(index)
    # ˄
  end

  public
  def add(book)
    # ˅
    @books[@number_of_books] = book
    @number_of_books += 1
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

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
  def initialize(max_size)

    @number_of_books = 0

    @books = Array.new(max_size)

    # ˅

    # ˄
  end

  public
  def iterator
    # ˅
    return BookShelfIterator.new(self)
    # ˄
  end

  public
  def get_at(index)
    # ˅
    return @books.at(index)
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
  public
  attr_accessor :number_of_books
  # ˄
end

# ˅

# ˄

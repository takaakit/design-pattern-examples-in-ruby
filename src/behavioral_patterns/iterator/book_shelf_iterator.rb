#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'book_shelf'
require_relative 'iterator'

# ˄

class BookShelfIterator < Iterator
  # ˅

  # ˄

  public
  def initialize(book_shelf)

    @index = 0

    @book_shelf = book_shelf

    # ˅

    # ˄
  end

  public
  def has_next
    # ˅
    return @index < @book_shelf.number_of_books
    # ˄
  end

  public
  def next
    # ˅
    book = @book_shelf.get_at(@index)
    @index += 1
    return book
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

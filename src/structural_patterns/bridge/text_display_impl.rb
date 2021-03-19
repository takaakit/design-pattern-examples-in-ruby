#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'display_impl'

# ˄

class TextDisplayImpl < DisplayImpl
  # ˅

  # ˄

  public
  def initialize(text)

    # A string to display
    @text = text

    # A number of characters in bytes
    @width = text.length

    # ˅

    # ˄
  end

  public
  def impl_open
    # ˅
    print_line
    # ˄
  end

  public
  def impl_write
    # ˅
    puts ":#{@text}:"    # Enclose a text with ":" and display it.
    # ˄
  end

  public
  def impl_close
    # ˅
    print_line
    # ˄
  end

  private
  def print_line
    # ˅
    print "*"             # Display "*" mark at the beginning of a frame.
    for i in 0..@width-1  # Display "." for the number of "width".
      print "."
    end
    puts "*"              # Display "*" mark at the end of a frame.
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

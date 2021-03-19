#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'abstract_display'

# ˄

class StringDisplay < AbstractDisplay
  # ˅
  
  # ˄

  public
  def initialize(string_value)

    @string_value = string_value

    # String width
    @width = string_value.length

    # ˅
    
    # ˄
  end

  public
  def open
    # ˅
    write_line     # Write a line
    # ˄
  end

  public
  def write
    # ˅
    puts "|" + @string_value + "|"  # Display the character with "|"
    # ˄
  end

  public
  def close
    # ˅
    write_line     # Write a line
    # ˄
  end

  private
  def write_line
    # ˅
    print "+"       # Display an end mark "+"
    for i in 0..@width-1
      print "-"     # Display a line "-"
    end
    puts "+"        # Display an end mark "+"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

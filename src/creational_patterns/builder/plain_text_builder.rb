#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'builder'

# ˄

class PlainTextBuilder < Builder
  # ˅
  
  # ˄

  public
  attr_accessor :result

  public
  def initialize

    # String to output
    @result = ""

    @buffer = []

    # ˅
    
    # ˄
  end

  # Make a title of plain text
  public
  def create_title(title)
    # ˅
    @buffer.push("--------------------------------\n")    # Decoration line
    @buffer.push("[" + title + "]\n")                           # Title
    @buffer.push("\n")                                        # Blank line
    # ˄
  end

  # Make a section of plain text
  public
  def create_section(section)
    # ˅
    @buffer.push("* " + section + "\n")       # Section
    @buffer.push("\n")                      # Blank line
    # ˄
  end

  # Make items of plain text
  public
  def create_items(items)
    # ˅
    for item in items
      @buffer.push("  - " + item + "\n")      # Items
    end
    @buffer.push("\n")                      # Blank line
    # ˄
  end

  public
  def close
    # ˅
    @buffer.push("--------------------------------\n")    # Decoration line
    @result = @buffer.join
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

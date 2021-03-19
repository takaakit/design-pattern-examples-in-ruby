#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require "stringio"
require_relative 'builder'

# ˄

class PlainTextBuilder < Builder
  # ˅
  
  # ˄

  public
  def initialize

    @buffer = StringIO.new

    # ˅
    
    # ˄
  end

  # Make a title of plain text
  public
  def create_title(title)
    # ˅
    @buffer << "--------------------------------\n"     # Decoration line
    @buffer << "[#{title}]\n"                           # Title
    @buffer << "\n"                                     # Blank line
    # ˄
  end

  # Make a section of plain text
  public
  def create_section(section)
    # ˅
    @buffer << "* #{section}\n"                         # Section
    @buffer << "\n"                                     # Blank line
    # ˄
  end

  # Make items of plain text
  public
  def create_items(items)
    # ˅
    for item in items
      @buffer << "  - #{item}\n"                        # Items
    end
    @buffer << "\n"                                     # Blank line
    # ˄
  end

  public
  def close
    # ˅
    @buffer << "--------------------------------\n"     # Decoration line
    # ˄
  end

  public
  def content
    return @buffer.string
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

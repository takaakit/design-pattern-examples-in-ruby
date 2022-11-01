#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require 'stringio'
require_relative 'frame'

# ˄

class FullFrame < Frame
  # ˅
  
  # ˄

  public
  def initialize(display)
    # ˅
    super(display)
    # ˄
  end

  # Number of characters added left and right decoration characters
  public
  def get_columns
    # ˅
    1 + @display.get_columns + 1
    # ˄
  end

  # Number of rows added the upper and lower decoration lines
  public
  def get_rows
    # ˅
    1 + @display.get_rows + 1
    # ˄
  end

  public
  def get_line_text(row)
    # ˅
    if row == 0
      "+#{create_line("-", @display.get_columns)}+" # Upper frame
    elsif row == @display.get_rows + 1
      "+#{create_line("-", @display.get_columns)}+"  # Bottom frame
    else
      "|#{@display.get_line_text(row - 1)}|" # Other
    end
    # ˄
  end

  private
  def create_line(ch, size)
    # ˅
    ch * size
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

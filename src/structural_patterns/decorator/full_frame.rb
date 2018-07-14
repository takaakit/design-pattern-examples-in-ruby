#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
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

  public
  def get_columns
    # ˅
    return 1 + @display.get_columns + 1
    # ˄
  end

  public
  def get_rows
    # ˅
    return 1 + @display.get_rows + 1
    # ˄
  end

  public
  def get_line_text(row)
    # ˅
    if row == 0
      # Upper frame
      return "+" + create_line("-", @display.get_columns) + "+"
    elsif row == @display.get_rows + 1
      # Bottom frame
      return "+" + create_line("-", @display.get_columns) + "+"
    else
      # Other
      return "|" + @display.get_line_text(row - 1) + "|"
    end
    # ˄
  end

  private
  def create_line(ch, size)
    # ˅
    buf = []
    for i in 0..size-1
      buf.push(ch)
    end
    return buf.join
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'frame'

# ˄

class SideFrame < Frame
  # ˅
  
  # ˄

  public
  def initialize(display, frame_char)

    # Decoration character
    @frame_char = frame_char

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
    return @display.get_rows
    # ˄
  end

  public
  def get_line_text(row)
    # ˅
    return @frame_char + @display.get_line_text(row) + @frame_char
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

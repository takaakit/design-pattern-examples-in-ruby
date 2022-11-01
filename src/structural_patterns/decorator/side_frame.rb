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

    if @frame_char.length != 1
      abort("Only one character is allowed in a side frame.")
    end
    # ˄
  end

  # Number of characters added left and right decoration characters
  public
  def get_columns
    # ˅
    1 + @display.get_columns + 1
    # ˄
  end

  # Number of lines
  public
  def get_rows
    # ˅
    @display.get_rows
    # ˄
  end

  public
  def get_line_text(row)
    # ˅
    @frame_char + @display.get_line_text(row) + @frame_char
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

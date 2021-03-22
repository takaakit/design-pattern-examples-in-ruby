#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'framework/display'

# ˄

class FrameDisplay < Display
  # ˅
  
  # ˄

  public
  def initialize(border_char)

    @border_char = border_char

    # ˅
    
    # ˄
  end

  public
  def clone
    # ˅
    return FrameDisplay.new(@border_char)
    # ˄
  end

  public
  def show(message)
    # ˅
    length = message.length
    for i in 0..length+4-1
      print @border_char
    end
    puts ""
    puts "#{@border_char} #{message} #{@border_char}"
    for i in 0..length+4-1
      print @border_char
    end
    puts ""
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

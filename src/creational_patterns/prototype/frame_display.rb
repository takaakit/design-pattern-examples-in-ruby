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
    FrameDisplay.new(@border_char)
    # ˄
  end

  public
  def show(message)
    # ˅
    puts @border_char * (message.length + 4)
    puts "#{@border_char} #{message} #{@border_char}"
    puts @border_char * (message.length + 4)
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

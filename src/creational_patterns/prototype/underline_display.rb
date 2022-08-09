#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'framework/display'

# ˄

class UnderlineDisplay < Display
  # ˅
  
  # ˄

  public
  def initialize(underline_char)

    @underline_char = underline_char

    # ˅
    
    # ˄
  end

  public
  def clone
    # ˅
    return UnderlineDisplay.new(@underline_char)
    # ˄
  end

  public
  def show(message)
    # ˅
    puts "\"#{message}\""
    puts " #{@underline_char * message.length}"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

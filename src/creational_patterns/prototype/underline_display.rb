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
  def create_clone
    # ˅
    return UnderlineDisplay.new(@underline_char)
    # ˄
  end

  public
  def show(message)
    # ˅
    length = message.length
    puts "\"#{message}\""
    print " "
    for i in 0..length-1
      print @underline_char
    end
    puts ""
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

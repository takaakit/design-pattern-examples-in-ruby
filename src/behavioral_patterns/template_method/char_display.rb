#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'abstract_display'

# ˄

class CharDisplay < AbstractDisplay
  # ˅
  
  # ˄

  public
  def initialize(char_value)

    @char_value = char_value

    # ˅
    
    # ˄
  end

  public
  def open
    # ˅
    print "<<"    # Display "<<" in the start characters.
    # ˄
  end

  public
  def write
    # ˅
    print @char_value   # Display the character.
    # ˄
  end

  public
  def close
    # ˅
    puts ">>"     # Display ">>" in the end characters.
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

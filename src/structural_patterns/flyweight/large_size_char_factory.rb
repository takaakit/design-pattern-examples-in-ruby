#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require 'singleton'
require_relative 'large_size_char'

# ˄

class LargeSizeCharFactory
  include Singleton
  # ˅
  
  # ˄

  public
  def initialize

    @pool_chars = {}

    # ˅
    
    # ˄
  end

  # Create an instance of the large size character.
  public
  def get_large_size_char(char_name)
    # ˅
    lsc = @pool_chars[char_name]
    if lsc.nil?
      lsc = LargeSizeChar.new(char_name)     # Create an instance
      @pool_chars[char_name] = lsc
    end
    return lsc
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

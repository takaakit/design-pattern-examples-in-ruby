#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'large_size_char'
require_relative 'large_size_char_factory'

# ˄

class LargeSizeString
  # ˅
  
  # ˄

  public
  def initialize(string)

    @large_size_chars = []

    # ˅
    string.each_char do |ch|
      @large_size_chars.push(LargeSizeCharFactory.instance.get_large_size_char(ch))
    end
    # ˄
  end

  public
  def display
    # ˅
    @large_size_chars.each do |large_size_char|
      large_size_char.display
    end
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

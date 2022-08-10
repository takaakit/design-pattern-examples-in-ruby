#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Display
  # ˅
  
  # ˄

  public
  def initialize
    # ˅
    
    # ˄
  end

  # Column width
  public
  def get_columns
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # Number of rows
  public
  def get_rows
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def get_line_text(row)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # Show all
  public
  def show
    # ˅
    get_rows.times do |i|
      puts get_line_text(i)
    end
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

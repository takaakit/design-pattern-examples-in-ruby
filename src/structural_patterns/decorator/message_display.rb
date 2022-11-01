#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'display'

# ˄

class MessageDisplay < Display
  # ˅
  
  # ˄

  public
  def initialize(message)

    # Message to be displayed
    @message = message

    # ˅
    
    # ˄
  end

  # Number of characters
  public
  def get_columns
    # ˅
    @message.length
    # ˄
  end

  # The number of rows is 1
  public
  def get_rows
    # ˅
    1
    # ˄
  end

  public
  def get_line_text(row)
    # ˅
    if row == 0
      @message
    else
      ""
    end
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

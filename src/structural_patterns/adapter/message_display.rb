#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class MessageDisplay
  # ˅

  # ˄

  public
  def initialize(message)

    @message = message

    # ˅

    # ˄
  end

  public
  def display_with_hyphens
    # ˅
    puts "-- " + @message + " --"
    # ˄
  end

  public
  def display_with_brackets
    # ˅
    puts "[[ " + @message + " ]]"
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

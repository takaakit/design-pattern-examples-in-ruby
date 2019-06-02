#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Trouble
  # ˅

  # ˄

  public
  attr_accessor :id

  public
  def initialize(id)

    # Trouble number
    @id = id

    # ˅

    # ˄
  end

  public
  def to_string
    # ˅
    return "[Trouble " + @id.to_s + "]"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

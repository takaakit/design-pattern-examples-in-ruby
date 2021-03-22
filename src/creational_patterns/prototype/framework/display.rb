#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Display
  # ˅
  
  # ˄

  public
  def clone
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def show(message)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

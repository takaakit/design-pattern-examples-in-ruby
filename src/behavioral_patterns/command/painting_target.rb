#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class PaintingTarget
  # ˅
  
  # ˄

  public
  def paint(x, y)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def clear
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

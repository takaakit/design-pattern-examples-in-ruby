#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Element
  # ˅
  
  # ˄

  public
  def accept(visitor)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

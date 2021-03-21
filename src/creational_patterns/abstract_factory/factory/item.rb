#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Item
  # ˅
  
  # ˄

  public
  def initialize(name)

    @name = name

    # ˅
    
    # ˄
  end

  public
  def to_html
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

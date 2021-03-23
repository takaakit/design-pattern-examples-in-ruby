#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

# Node in the syntax tree.
class Node
  # ˅
  
  # ˄

  public
  def parse(context)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def to_s
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

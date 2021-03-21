#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'product'

# ˄

class Factory
  # ˅
  
  # ˄

  public
  def create(owner)
    # ˅
    return create_product(owner)
    # ˄
  end

  public
  def create_product(owner)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

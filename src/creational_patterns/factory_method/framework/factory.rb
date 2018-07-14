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
    product = create_product(owner)
    register_product(product)
    return product
    # ˄
  end

  protected
  def create_product(owner)
    # ˅
    
    # ˄
  end

  protected
  def register_product(product)
    # ˅
    
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

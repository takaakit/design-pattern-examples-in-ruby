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
    # Write pre-creation code here, if any.

    product = create_product(owner)

    # Write post-creation code here, if any.

    return product
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

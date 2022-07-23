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
    # Write pre-creation code here.

    # Encapsulate the knowledge of which Product subclass to create and move this knowledge out of the framework.
    product = create_product(owner)

    # Write post-creation code here.

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

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative '../framework/factory'
require_relative 'credit_card'

# ˄

class CreditCardFactory < Factory
  # ˅
  
  # ˄

  public
  def initialize

    # ˅
    
    # ˄
  end

  public
  def create_product(owner)
    # ˅
    return CreditCard.new(owner)
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

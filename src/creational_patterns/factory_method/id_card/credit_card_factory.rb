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

    @card_owners = []

    # ˅
    
    # ˄
  end

  public
  def create_product(owner)
    # ˅
    return CreditCard.new(owner)
    # ˄
  end

  public
  def register_product(product)
    # ˅
    @card_owners.push(product)
    # ˄
  end

  public
  def get_card_owner
    # ˅
    return @card_owners
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative '../framework/product'

# ˄

class CreditCard < Product
  # ˅
  
  # ˄

  public
  def initialize(owner)

    @owner = owner

    # ˅
    puts "Make #{@owner}\'s card."
    # ˄
  end

  public
  def use
    # ˅
    puts "User #{@owner}\'s card."
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

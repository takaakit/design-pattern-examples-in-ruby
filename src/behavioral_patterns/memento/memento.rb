#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Memento
  # ˅

  # ˄

  public
  attr_accessor :money

  public
  attr_accessor :desserts

  public
  def initialize(money)

    # Money
    @money = money

    # Desserts
    @desserts = []

    # ˅

    # ˄
  end

  # Add a dessert
  public
  def add_dessert(dessert)
    # ˅
    @desserts.push(dessert)
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

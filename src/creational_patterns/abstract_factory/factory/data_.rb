#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'item'

# ˄

# Since class name of "Data" can not be used duplicately, the class name is "Data_".
class Data_ < Item
  # ˅
  
  # ˄

  public
  def initialize(name)

    @items = []

    # ˅
    super(name)
    # ˄
  end

  public
  def add(item)
    # ˅
    @items.push(item)
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

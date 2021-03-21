#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Colleague
  # ˅

  # ˄

  public
  attr_accessor :mediator

  public
  def initialize

    @mediator = nil

    # ˅
    
    # ˄
  end

  # Set enable/disable from the Mediator
  public
  def set_activation(is_enable)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

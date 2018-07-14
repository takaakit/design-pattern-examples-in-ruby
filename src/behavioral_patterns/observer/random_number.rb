#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'number'

# ˄

# Generate a random number.
class RandomNumber < Number
  # ˅

  # ˄

  public
  def initialize
    # ˅
    super
    # ˄
  end

  public
  def generate
    # ˅
    random = Random.new()
    for i in 0..20
      @value = random.rand(50)
      notify_observers()
    end
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

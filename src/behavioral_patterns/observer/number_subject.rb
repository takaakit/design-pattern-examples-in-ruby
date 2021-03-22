#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'subject'

# ˄

# Generate a random number.
class NumberSubject < Subject
  # ˅

  # ˄

  public
  def initialize

    @value = 0

    # ˅
    super
    # ˄
  end

  public
  def value
    # ˅
    return @value
    # ˄
  end

  public
  def value=(value)
    # ˅
    @value = value
    notify_observers
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

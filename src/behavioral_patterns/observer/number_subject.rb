#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'subject'

# ˄

# Holds a value and notifies observers when the value is set.
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
    @value
    # ˄
  end

  public
  def value=(value)
    # ˅
    # Notify observers when the value is set.
    @value = value
    notify_observers
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'observer'

# ˄

# An abstract class that generates numbers.
class Number
  # ˅

  # ˄

  public
  def initialize

    @value = 0

    @observers = []

    # ˅

    # ˄
  end

  public
  def generate
    # ˅

    # ˄
  end

  public
  def add_observer(observer)
    # ˅
    @observers.push(observer)
    # ˄
  end

  public
  def delete_observer(observer)
    # ˅
    @observers.delete(observer)
    # ˄
  end

  public
  def notify_observers
    # ˅
    for observer in @observers
      observer.update(self)
    end
    # ˄
  end

  # ˅
  public
  attr_accessor :value
  # ˄
end

# ˅

# ˄

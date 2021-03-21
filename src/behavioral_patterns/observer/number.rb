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
  attr_accessor :value

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
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def add_observer(observer)
    # ˅
    @observers.push(observer)
    # ˄
  end

  public
  def remove_observer(observer)
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
  
  # ˄
end

# ˅

# ˄

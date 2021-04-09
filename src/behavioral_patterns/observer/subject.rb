#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'observer'

# ˄

# Provides an interface for attaching and detaching Observer objects.
class Subject
  # ˅

  # ˄

  public
  def initialize

    @observers = []

    # ˅

    # ˄
  end

  public
  def attach(observer)
    # ˅
    @observers.push(observer)
    # ˄
  end

  public
  def detach(observer)
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

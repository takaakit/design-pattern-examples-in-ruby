#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'display'

# ˄

class MultiLineDisplay < Display
  # ˅

  # ˄

  public
  def initialize(impl)
    # ˅
    super(impl)
    # ˄
  end

  # Repeat display for the specified number of times
  public
  def display_multiple(times)
    # ˅
    open
    for i in 0..times-1
      write
    end
    close
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

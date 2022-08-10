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
  def output_multiple(times)
    # ˅
    open
    times.times do
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

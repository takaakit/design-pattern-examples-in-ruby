#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'observer'

# ˄

# Display values as a number.
class DigitObserver < Observer
  # ˅

  # ˄

  public
  def update(number)
    # ˅
    puts "Digit    : #{number.value}"
    sleep(0.1)
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

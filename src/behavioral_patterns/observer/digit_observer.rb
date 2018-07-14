#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'observer'

# ˄

# Display values with digits.
class DigitObserver < Observer
  # ˅

  # ˄

  public
  def update(number)
    # ˅
    puts "Digit    : " + number.value.to_s
    sleep(0.1)
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

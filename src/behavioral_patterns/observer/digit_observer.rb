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
  def initialize(number_subject)

    @number_subject = number_subject

    # ˅
    
    # ˄
  end

  public
  def update(changed_subject)
    # ˅
    if changed_subject === @number_subject
      puts "Digit    : #{@number_subject.value}"
    end
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

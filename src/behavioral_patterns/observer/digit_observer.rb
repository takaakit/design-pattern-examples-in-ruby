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
    # Before processing, it checks to make sure the changed subject is the subject held.
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

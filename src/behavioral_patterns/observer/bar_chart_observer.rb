#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'observer'

# ˄

# Display values as a bar chart.
class BarChartObserver < Observer
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
      puts "Bar chart: #{"*" * @number_subject.value}"
    end
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

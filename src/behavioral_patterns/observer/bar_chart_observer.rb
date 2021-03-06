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
    if changed_subject === @number_subject
      print "Bar chart: "
      for i in 0..@number_subject.value-1
        print "*"
      end
      puts ""
    end
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

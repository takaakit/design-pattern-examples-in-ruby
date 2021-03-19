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
  def update(number)
    # ˅
    print "Bar chart: "
    for i in 0..number.value - 1
      print "*"
    end
    puts ""
    sleep(0.1)
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

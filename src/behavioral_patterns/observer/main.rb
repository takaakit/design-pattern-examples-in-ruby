#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'random_number'
require_relative 'digit_observer'
require_relative 'bar_chart_observer'

# Observers observe objects generating a numerical value and display the value.

number = RandomNumber.new()
digit_observer = DigitObserver.new()
bar_chart_observer = BarChartObserver.new()
number.add_observer(digit_observer)
number.add_observer(bar_chart_observer)
number.generate()

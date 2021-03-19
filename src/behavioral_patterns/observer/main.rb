#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'random_number'
require_relative 'digit_observer'
require_relative 'bar_chart_observer'

=begin
Observers observe objects generating a numerical value and display the value.
The display formats are digits and bar charts.
=end

number = RandomNumber.new
number.add_observer(DigitObserver.new)
number.add_observer(BarChartObserver.new)
number.generate

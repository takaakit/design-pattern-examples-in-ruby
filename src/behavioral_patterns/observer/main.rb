#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'number_subject'
require_relative 'digit_observer'
require_relative 'bar_chart_observer'

=begin
Observers observe a Subject object holding a numerical value and display the value.
The display formats are digits and bar charts.
=end

number_subject = NumberSubject.new
number_subject.attach(DigitObserver.new(number_subject))
number_subject.attach(BarChartObserver.new(number_subject))

random = Random.new
for i in 0..19
  number_subject.value = random.rand(50)
  sleep(0.2)
end
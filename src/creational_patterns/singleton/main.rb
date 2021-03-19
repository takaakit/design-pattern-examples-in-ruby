#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'singleton_'

=begin
Check whether the same instance is obtained.
=end

obj_1 = Singleton_.instance
obj_2 = Singleton_.instance
if obj_1 === obj_2
  puts "obj1 and obj2 are the same instance."
else
  puts "obj1 and obj2 are different instances."
end

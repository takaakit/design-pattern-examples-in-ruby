#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require 'singleton'
# ˄

class DataLibrary
  # ˅
  include Singleton
  # ˄

  # Read a data library file.
  public
  def get_properties(data_library_name)
    # ˅
    prop = {}
    File.open("#{File.dirname(__FILE__)}/#{data_library_name}", "r") do |f|
      f.each_line do |line|
        key, value = line.chomp.split("=", 2)
        prop[key] = value
      end
    end
    return prop
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

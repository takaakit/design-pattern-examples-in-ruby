#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class DataLibrary
  # ˅
  
  # ˄

  # Read a data library file.
  public
  def get_properties(data_library_name)
    # ˅
    file_name = data_library_name + ".txt"
    prop = {}
    File.open(File.dirname(__FILE__) + "/" + file_name, "r") do |f|
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

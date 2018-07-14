#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'file_system_element'

# ˄

# Since class name of "File" can not be used duplicately, the class name is "File_".
class File_ < FileSystemElement
  # ˅
  
  # ˄

  public
  def initialize(name, size)
    # ˅
    super(name, size)
    # ˄
  end

  # Print this element with the "upperPath".
  public
  def print(upper_path)
    # ˅
    puts upper_path + "/" + to_string
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

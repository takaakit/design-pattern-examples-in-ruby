#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'file_system_element'

# ˄

class Directory < FileSystemElement
  # ˅
  
  # ˄

  public
  def initialize(name)

    @elements = []

    # ˅
    super(name, 0)
    # ˄
  end

  # Print this element with the "upperPath".
  public
  def print(upper_path)
    # ˅
    puts upper_path + "/" + to_string
    for element in @elements
      element.print(upper_path + "/" + @name)
    end
    # ˄
  end

  # Add a element
  public
  def add(element)
    # ˅
    @elements.push(element)
    return self
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

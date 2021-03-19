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

    @name = name

    @elements = []

    # ˅

    # ˄
  end

  public
  def name
    return @name
  end

  public
  def size
    size = 0
    for element in @elements
      size += element.size
    end
    return size
  end

  # Print this element with the "upperPath".
  public
  def print(upper_path)
    # ˅
    puts "#{upper_path}/#{self}"
    for element in @elements
      element.print("#{upper_path}/#{@name}")
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

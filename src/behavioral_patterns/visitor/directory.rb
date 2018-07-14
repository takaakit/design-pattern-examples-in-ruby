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

    # Collection of elements
    @elements = []

    # ˅
    super(name, 0)
    # ˄
  end

  # Accept a visitor
  public
  def accept(visitor)
    # ˅
    visitor.visit_directory(self)
    # ˄
  end

  # Add an entry
  public
  def add(element)
    # ˅
    @elements.push(element)
    return self
    # ˄
  end

  # Get elements
  public
  def get_elements
    # ˅
    return @elements
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

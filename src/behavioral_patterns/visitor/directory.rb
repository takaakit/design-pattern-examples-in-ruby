#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'file_system_element'

# ˄

class Directory < FileSystemElement
  # ˅

  # ˄

  public
  attr_reader :elements

  public
  def initialize(name)

    @name = name

    # Collection of elements
    @elements = []

    # ˅

    # ˄
  end

  # Accept a visitor
  public
  def accept(visitor)
    # ˅
    visitor.visit_directory(self)
    # ˄
  end

  # Directory name
  public
  def name
    # ˅
    @name
    # ˄
  end

  # Directory size
  public
  def size
    # ˅
    size = 0
    for element in @elements
      size += element.size
    end
    size
    # ˄
  end

  # Add an element
  public
  def add(element)
    # ˅
    @elements.push(element)
    self
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

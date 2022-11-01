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

    @name = name

    @size = size

    # ˅

    # ˄
  end

  public
  def accept(visitor)
    # ˅
    visitor.visit_file(self)
    # ˄
  end

  public
  def name
    # ˅
    @name
    # ˄
  end

  public
  def size
    # ˅
    @size
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

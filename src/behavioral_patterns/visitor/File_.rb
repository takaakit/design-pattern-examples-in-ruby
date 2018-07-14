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

  public
  def accept(visitor)
    # ˅
    visitor.visit_file(self)
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

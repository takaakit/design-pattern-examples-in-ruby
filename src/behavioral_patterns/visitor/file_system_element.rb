#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'element'

# ˄

class FileSystemElement < Element
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
  def to_string
    # ˅
    return @name + " (" + @size.to_s + ")"
    # ˄
  end

  # ˅
  public
  attr_accessor :name
  public
  attr_accessor :size
  # ˄
end

# ˅

# ˄

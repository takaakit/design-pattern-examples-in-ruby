#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'element'

# ˄

class FileSystemElement < Element
  # ˅

  # ˄

  public
  def name
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def size
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def to_s
    # ˅
    return "#{name} (#{size})"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

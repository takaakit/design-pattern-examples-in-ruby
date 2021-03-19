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

  end

  public
  def size

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

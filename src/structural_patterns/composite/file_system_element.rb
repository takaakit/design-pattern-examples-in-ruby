#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class FileSystemElement
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

  # Print this element with the "upperPath".
  public
  def print(upper_path)
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

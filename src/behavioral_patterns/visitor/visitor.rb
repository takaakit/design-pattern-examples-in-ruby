#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Visitor
  # ˅
  
  # ˄

  public
  def visit_file(file)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def visit_directory(directory)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

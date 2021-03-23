#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Printer
  # ˅
  
  # ˄

  public
  def get_name
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def change_name(name)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def output(content)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

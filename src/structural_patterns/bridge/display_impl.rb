#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class DisplayImpl
  # ˅
  
  # ˄

  public
  def impl_open
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def impl_write
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def impl_close
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

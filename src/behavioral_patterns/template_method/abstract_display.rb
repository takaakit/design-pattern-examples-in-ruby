#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class AbstractDisplay
  # ˅
  
  # ˄

  public
  def open
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def write
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def close
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def output
    # ˅
    open
    for i in 0..4   # Repeat write 5 times
      write
    end
    close
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

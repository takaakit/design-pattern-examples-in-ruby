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
    5.times do    # Repeat write 5 times
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

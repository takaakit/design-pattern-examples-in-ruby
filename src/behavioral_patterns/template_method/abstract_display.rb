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
    
    # ˄
  end

  public
  def write
    # ˅
    
    # ˄
  end

  public
  def close
    # ˅
    
    # ˄
  end

  public
  def output
    # ˅
    open()
    for i in 0..4   # Repeat write 5 times
      write()
    end
    close()
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

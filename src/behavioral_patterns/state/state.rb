#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class State
  # ˅
  
  # ˄

  public
  def set_time(context, hour)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def use(context)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def alarm(context)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def phone(context)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def to_s
    # ˅
    
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

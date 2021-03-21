#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class State
  # ˅
  
  # ˄

  # Set time
  public
  def set_time(context, hour)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # Use a safe
  public
  def use_safe(context)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # Sound a emergency bell
  public
  def sound_bell(context)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # Make a normal call
  public
  def call(context)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

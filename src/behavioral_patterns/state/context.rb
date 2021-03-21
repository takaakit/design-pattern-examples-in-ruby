#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Context
  # ˅
  
  # ˄

  # Set time
  public
  def set_time(hour)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # Change state
  public
  def change_state(state)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # Call a security guard room
  public
  def call_security_guards_room(msg)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # Record security log
  public
  def record_security_log(msg)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

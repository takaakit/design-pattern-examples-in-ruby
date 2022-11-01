#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'display'

# ˄

class Manager
  # ˅
  
  # ˄

  public
  def initialize

    @display = {}

    # ˅
    
    # ˄
  end

  public
  def register_display(display_name, display)
    # ˅
    @display[display_name] = display
    # ˄
  end

  public
  def get_display(display_name)
    # ˅
    d = @display[display_name]
    d.clone # Create a new object by asking a concrete class to clone itself. Therefore, do not need to know the concrete Display class name.
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

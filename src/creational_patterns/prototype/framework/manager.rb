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
    return d.create_clone
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'node'
require_relative 'context'

# ˄

# A node corresponding to "forward", "left", and "right".
class Action < Node
  # ˅

  # ˄

  public
  def initialize

    @name = nil

    # ˅

    # ˄
  end

  public
  def parse(context)
    # ˅
    current_token = context.get_token
    if current_token != "forward" and current_token != "right" and current_token != "left"
      abort("#{current_token} is unknown")
    end
    
    @name = current_token   # Hold the current token as this action name
    
    context.slide_token(current_token)
    # ˄
  end

  public
  def to_s
    # ˅
    return @name
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

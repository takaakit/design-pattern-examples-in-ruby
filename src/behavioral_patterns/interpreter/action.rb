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
    @name = context.get_token
    context.slide_token(@name)
    if @name != "forward" and @name != "right" and @name != "left"
      abort @name + " is unknown"
    end
    # ˄
  end

  public
  def to_string
    # ˅
    return @name
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'node'
require_relative 'repeat'
require_relative 'action'

# ˄

class Command < Node
  # ˅
  
  # ˄

  public
  def initialize

    @node = nil

    # ˅
    
    # ˄
  end

  public
  def parse(context)
    # ˅
    if context.get_token == "repeat"
      @node = Repeat.new()
    else
      @node = Action.new()
    end
    @node.parse(context)
    # ˄
  end

  public
  def to_string
    # ˅
    return @node.to_string
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

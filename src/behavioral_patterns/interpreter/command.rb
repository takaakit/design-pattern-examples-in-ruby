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
    a_node = nil
    if context.get_token == "repeat"
      a_node = Repeat.new
      a_node.parse(context)
    else
      a_node = Action.new
      a_node.parse(context)
    end
    
    @node = a_node    # Hold the parsed node
    # ˄
  end

  public
  def to_s
    # ˅
    "#{@node}"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

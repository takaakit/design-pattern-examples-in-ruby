#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'node'
require_relative 'command'

# ˄

class CommandList < Node
  # ˅

  # ˄

  public
  def initialize

    @nodes = []

    # ˅

    # ˄
  end

  public
  def parse(context)
    # ˅
    while true
      if context.get_token.nil?
        abort("Missing 'end'")
      elsif context.get_token == "end"
        context.slide_token("end")
        break
      else
        a_node = Command.new
        a_node.parse(context)
        
        @nodes.push(a_node)    # Hold the parsed node
      end
    end
    # ˄
  end

  public
  def to_s
    # ˅
    return "[#{@nodes.join(", ")}]"
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

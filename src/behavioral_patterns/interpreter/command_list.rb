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
      if context.get_token == nil
        abort("Missing 'end'")
      elsif context.get_token == "end"
        context.slide_token("end")
        break
      else
        command_node = Command.new()
        command_node.parse(context)
        @nodes.push(command_node.to_string)
      end
    end
    # ˄
  end

  public
  def to_string
    # ˅
    return @nodes.join(", ")
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

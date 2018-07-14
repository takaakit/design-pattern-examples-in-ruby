#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'node'
require_relative 'command_list'

# ˄

# A node corresponding to "program".
class Program < Node
  # ˅
  
  # ˄

  public
  def initialize

    @command_list = nil

    # ˅
    
    # ˄
  end

  public
  def parse(context)
    # ˅
    context.slide_token("program")
    @command_list = CommandList.new()
    @command_list.parse(context)
    # ˄
  end

  public
  def to_string
    # ˅
    if @command_list != nil
      return "[proguram " + @command_list.to_string + "]"
    else
      return ""
    end
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

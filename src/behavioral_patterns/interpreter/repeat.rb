#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'node'

# ˄

# A node corresponding to "repeat".
class Repeat < Node
  # ˅
  
  # ˄

  public
  def initialize

    @number = 0

    @command_list = nil

    # ˅
    
    # ˄
  end

  public
  def parse(context)
    # ˅
    context.slide_token("repeat")
    
    @number = context.get_number
    context.slide_token(@number)
    
    a_command_list = CommandList.new
    a_command_list.parse(context)

    @command_list = a_command_list    # Hold the parsed command list
    # ˄
  end

  public
  def to_s
    # ˅
    return "repeat #{@number} #{@command_list}"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

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
    
    a_command_list = CommandList.new
    a_command_list.parse(context)
    
    @command_list = a_command_list    # Hold the parsed command list
    # ˄
  end

  public
  def to_s
    # ˅
    "[program #{@command_list}]"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'command'

# ˄

# Holder of the past commands
class HistoryCommand < Command
  # ˅
  
  # ˄

  public
  def initialize

    # A set of past commands
    @past_commands = []

    # ˅
    
    # ˄
  end

  public
  def execute
    # ˅
    for past_command in @past_commands
      past_command.execute
    end
    # ˄
  end

  public
  def add(cmd)
    # ˅
    @past_commands.push(cmd)
    # ˄
  end

  # Delete the last command
  public
  def undo
    # ˅
    if @past_commands.length != 0
      @past_commands.pop
    end
    # ˄
  end

  # Delete all past commands.
  public
  def clear
    # ˅
    @past_commands.clear
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

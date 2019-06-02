#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'command'
require_relative 'painting_target'

# ˄

# Command to paint a single point
class PaintingCommand < Command
  # ˅
  
  # ˄

  public
  attr_accessor :painting_target

  public
  def initialize(painting_target, painting_pos_x, painting_pos_y)

    # Painting position x
    @painting_pos_x = painting_pos_x

    # Painting position y
    @painting_pos_y = painting_pos_y

    @painting_target = painting_target

    # ˅
    
    # ˄
  end

  public
  def execute
    # ˅
    @painting_target.paint(@painting_pos_x, @painting_pos_y)
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'painting_target'

# ˄

class PaintingCanvas < PaintingTarget
  # ˅
  
  # ˄

  public
  def initialize(canvas)

    @painting_color = "blue"

    # Radius of the painting point
    @point_radius = 6.0

    @canvas = canvas

    # ˅
    
    # ˄
  end

  public
  def paint(painting_pos_x, painting_pos_y)
    # ˅
    TkcOval.new(@canvas,
                painting_pos_x - @point_radius,
                painting_pos_y - @point_radius,
                painting_pos_x + @point_radius,
                painting_pos_y + @point_radius,
                "fill" => @painting_color,
                "width" => 0
    )
    # ˄
  end

  public
  def clear
    # ˅
    @canvas.delete("all")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

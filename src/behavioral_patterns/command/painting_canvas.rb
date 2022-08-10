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

    @painting_color = "lightgreen"

    # Radius of the painting point
    @point_radius = 10.0

    @canvas = canvas

    # ˅
    
    # ˄
  end

  public
  def paint(x, y)
    # ˅
    t = TkcOval.new(@canvas,
                    x - @point_radius,
                    y - @point_radius,
                    x + @point_radius,
                    y + @point_radius)
    t.fill = @painting_color
    t.width = 0
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

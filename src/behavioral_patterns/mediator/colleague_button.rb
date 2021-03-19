#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'colleague'

# ˄

class ColleagueButton < Colleague
  # ˅

  # ˄

  public
  def initialize(button)

    # Flag indicating whether the button is pressed
    @is_pressed = false

    @button = button

    # ˅
    @button.bind("ButtonPress-1", proc{on_mouse_pressed})
    @button.bind("ButtonRelease-1", proc{on_mouse_released})
    # ˄
  end

  # Set enable/disable from the Mediator
  public
  def set_activation(is_enable)
    # ˅
    if is_enable
      @button.configure("state" => "normal")
    else
      @button.configure("state" => "disabled")
    end
    # ˄
  end

  public
  def is_pressed
    # ˅
    return (@button.state != "disabled" and @is_pressed)
    # ˄
  end

  private
  def on_mouse_pressed
    # ˅
    @is_pressed = true
    # ˄
  end

  private
  def on_mouse_released
    # ˅
    @mediator.colleague_changed
    @is_pressed = false
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

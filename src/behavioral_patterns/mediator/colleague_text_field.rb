#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'colleague'

# ˄

class ColleagueTextField < Colleague
  # ˅

  # ˄

  public
  def initialize(text_field)

    @text_field = text_field

    # ˅
    @text_field.bind("KeyRelease", proc{on_key_released})
    # ˄
  end

  # Set enable/disable from the Mediator
  public
  def set_activation(is_enable)
    # ˅
    if is_enable
      @text_field.configure("state" => "normal")
    else
      @text_field.configure("state" => "disabled")
    end
    # ˄
  end

  public
  def is_empty
    # ˅
    return @text_field.get.length == 0
    # ˄
  end

  private
  def on_key_released
    # ˅
    @mediator.colleague_changed
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

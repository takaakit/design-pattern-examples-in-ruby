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

    # Flag indicating whether the text is empty
    @is_empty = true

    @text_field = text_field

    # ˅
    @text_field.bind("KeyRelease", proc{on_key_released()})
    # ˄
  end

  # Set enable/disable from the Mediator
  public
  def set_activation(is_enable)
    # ˅
    if is_enable
      @text_field.configure(state: "normal")
    else
      @text_field.configure(state: "disabled")
    end
    # ˄
  end

  public
  def is_empty
    # ˅
    return @is_empty
    # ˄
  end

  private
  def on_key_released
    # ˅
    if @text_field.get.length == 0
      @is_empty = true
    else
      @is_empty = false
    end
    @mediator.colleague_changed
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

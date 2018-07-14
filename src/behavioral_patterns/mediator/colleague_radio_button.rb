#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'colleague'

# ˄

class ColleagueRadioButton < Colleague
  # ˅

  # ˄

  # Numerical value of the selected radio button
  @@selected_value = 0

  public
  def initialize(radio_button)

    @radio_button = radio_button

    # ˅
    @radio_button.bind("ButtonRelease-1", proc{|e| on_mouse_released(e)})
    # ˄
  end

  # Set enable/disable from the Mediator
  public
  def set_activation(is_enable)
    # ˅
    if is_enable
      @radio_button.configure(state: "normal")
    else
      @radio_button.configure(state: "disabled")
    end
    # ˄
  end

  public
  def is_selected
    # ˅
    return @@selected_value == @radio_button.value
    # ˄
  end

  private
  def on_mouse_released(event)
    # ˅
    @@selected_value = event.widget.value
    @mediator.colleague_changed
    # ˄
  end

  # ˅
  public
  attr_accessor :mediator
  # ˄
end

# ˅

# ˄

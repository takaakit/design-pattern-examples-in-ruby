#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require 'singleton'
require_relative 'state'
require_relative 'daytime_state'

# ˄

class NightState < State
  include Singleton
  # ˅

  # ˄

  # Set time
  public
  def set_time(context, hour)
    # ˅
    if 9 <= hour and hour < 17
      context.change_state(DaytimeState.instance)
    end
    # ˄
  end

  # Use a safe
  public
  def use_safe(context)
    # ˅
    context.call_security_guards_room("Emergency: Use a safe at night!")
    # ˄
  end

  # Sound a emergency bell
  public
  def sound_bell(context)
    # ˅
    context.call_security_guards_room("Sound a emergency bell at night")
    # ˄
  end

  # Make a normal call
  public
  def call(context)
    # ˅
    context.record_security_log("Record a night call")
    # ˄
  end

  public
  def to_s
    # ˅
    return "[Night]"
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'state'
require_relative 'night_state'

# ˄

class DaytimeState < State
  # ˅

  # ˄

  # Set time
  public
  def set_time(context, hour)
    # ˅
    if hour < 9 or 17 <= hour
      context.change_state(NightState.new())
    end
    # ˄
  end

  # Use a safe
  public
  def use_safe(context)
    # ˅
    context.record_security_log("Use a safe in the daytime")
    # ˄
  end

  # Sound a emergency bell
  public
  def sound_bell(context)
    # ˅
    context.call_security_guards_room("Sound a emergency bell in the daytime")
    # ˄
  end

  # Make a normal call
  public
  def call(context)
    # ˅
    context.call_security_guards_room("Make a normal call in the daytime")
    # ˄
  end

  public
  def to_string
    # ˅
    return "[Daytime]"
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

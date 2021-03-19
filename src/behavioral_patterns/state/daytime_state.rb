#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require 'singleton'
require_relative 'state'
require_relative 'night_state'

# ˄

class DaytimeState < State
  include Singleton
  # ˅

  # ˄

  # Set time
  public
  def set_time(context, hour)
    # ˅
    if hour < 9 or 17 <= hour
      context.change_state(NightState.instance)
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
  def to_s
    # ˅
    return "[Daytime]"
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

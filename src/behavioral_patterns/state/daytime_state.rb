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

  public
  def set_time(context, hour)
    # ˅
    if hour < 9 or 17 <= hour
      context.change_state(NightState.instance)
    end
    # ˄
  end

  public
  def use(context)
    # ˅
    context.record_security_log("Use a safe in the daytime")
    # ˄
  end

  public
  def alarm(context)
    # ˅
    context.call_security_guards_room("Sound an emergency bell in the daytime")
    # ˄
  end

  public
  def phone(context)
    # ˅
    context.call_security_guards_room("Make a normal call in the daytime")
    # ˄
  end

  public
  def to_s
    # ˅
    "[Daytime]"
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

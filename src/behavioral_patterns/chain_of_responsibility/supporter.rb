#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Supporter
  # ˅

  # ˄

  public
  def initialize(name)

    # Supporter name
    @name = name

    # Next supporter
    @next = nil

    # ˅

    # ˄
  end

  # Trouble support
  # Troubles are sent around.
  public
  def support(trouble)
    # ˅
    if can_handle(trouble)
      supported(trouble)
    elsif @next.nil? == false
      @next.support(trouble)
    else
      unsupported(trouble)
    end
    # ˄
  end

  # Set a next supporter.
  public
  def set_next(_next)
    # ˅
    @next = _next
    return @next
    # ˄
  end

  public
  def to_string
    # ˅
    return "[#{@name}]"
    # ˄
  end

  protected
  def can_handle(trouble)
    # ˅

    # ˄
  end

  # Trouble was supported.
  private
  def supported(trouble)
    # ˅
    puts "#{trouble} was handled by #{@name}."
    # ˄
  end

  # Trouble was unsupported.
  private
  def unsupported(trouble)
    # ˅
    puts "#{trouble} was not handled."
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'message_display'
require_relative 'print'

# ˄

# Adapt the MessageDisplay interface to the Print interface.
class PrintMessageDisplay < MessageDisplay
  include Print
  # ˅

  # ˄

  public
  def initialize(message)
    # ˅
    super(message)
    # ˄
  end

  public
  def print_weak
    # ˅
    display_with_hyphens
    # ˄
  end

  public
  def print_strong
    # ˅
    display_with_brackets
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

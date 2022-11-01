#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'supporter'

# ˄

class LazySupporter < Supporter
  # ˅

  # ˄

  public
  def initialize(name)
    # ˅
    super(name)
    # ˄
  end

  # No troubles are handled.
  protected
  def can_handle(trouble)
    # ˅
    false
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

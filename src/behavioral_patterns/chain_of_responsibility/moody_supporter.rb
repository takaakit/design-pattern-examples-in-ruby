#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'supporter'

# ˄

class MoodySupporter < Supporter
  # ˅

  # ˄

  public
  def initialize(name)
    # ˅
    super
    # ˄
  end

  # Troubles with an odd ID are handled.
  protected
  def can_handle(trouble)
    # ˅
    return trouble.id % 2 == 1
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

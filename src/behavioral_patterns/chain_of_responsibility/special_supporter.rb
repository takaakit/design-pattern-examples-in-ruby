#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'supporter'

# ˄

class SpecialSupporter < Supporter
  # ˅

  # ˄

  public
  def initialize(name, target_id)

    @target_id = target_id

    # ˅
    super(name)
    # ˄
  end

  # Troubles with the specific ID are handled.
  protected
  def handle(trouble)
    # ˅
    return trouble.id == @target_id
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

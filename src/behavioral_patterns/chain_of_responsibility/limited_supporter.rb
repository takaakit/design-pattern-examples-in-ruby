#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'supporter'

# ˄

class LimitedSupporter < Supporter
  # ˅

  # ˄

  public
  def initialize(name, limit_id)

    @limit_id = limit_id

    # ˅
    super(name)
    # ˄
  end

  # Troubles with an ID below the limit are handled.
  protected
  def can_handle(trouble)
    # ˅
    return trouble.id <= @limit_id
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

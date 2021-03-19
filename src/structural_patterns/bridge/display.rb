#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'display_impl'

# ˄

class Display
  # ˅

  # ˄

  public
  def initialize(impl)

    @impl = impl

    # ˅

    # ˄
  end

  public
  def output
    # ˅
    open
    write
    close
    # ˄
  end

  protected
  def open
    # ˅
    @impl.impl_open
    # ˄
  end

  protected
  def write
    # ˅
    @impl.impl_write
    # ˄
  end

  protected
  def close
    # ˅
    @impl.impl_close
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

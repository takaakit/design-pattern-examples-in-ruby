#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'item'

# ˄

class Link < Item
  # ˅
  
  # ˄

  public
  def initialize(name, url)

    @url = url

    # ˅
    super(name)
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

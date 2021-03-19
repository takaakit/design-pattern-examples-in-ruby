#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative '../factory/link'

# ˄

class ListLink < Link
  # ˅
  
  # ˄

  public
  def initialize(name, url)
    # ˅
    super(name, url)
    # ˄
  end

  public
  def to_html
    # ˅
    return "  <li><a href=\"#{@url}\">#{@name}</a></li>\n"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative '../factory/link'

# ˄

class TableLink < Link
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
    "  <td><a href=\"#{@url}\">#{@name}</a></td>\n"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

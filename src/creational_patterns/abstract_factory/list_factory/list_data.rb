#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative '../factory/data_'

# ˄

class ListData < Data_
  # ˅
  
  # ˄

  public
  def initialize(name)
    # ˅
    super(name)
    # ˄
  end

  public
  def to_html
    # ˅
    buffer = []
    buffer.push("<li>" + @name + "<ul>\n")
    for item in @items
      buffer.push(item.to_html)
    end
    buffer.push("</ul></li>\n")
    return buffer.join
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

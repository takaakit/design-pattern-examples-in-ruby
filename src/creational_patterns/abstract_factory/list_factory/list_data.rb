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
    buffer = StringIO.new
    buffer << "<li>#{@name}<ul>\n"
    for item in @items
      buffer << item.to_html
    end
    buffer << "</ul></li>\n"
    return buffer.string
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

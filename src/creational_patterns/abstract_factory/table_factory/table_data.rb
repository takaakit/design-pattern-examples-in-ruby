#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative '../factory/data_'

# ˄

class TableData < Data_
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
    buffer << "<td><table width=\"100%\" border=\"2\">\n"
    buffer << "<tr><td bgcolor=\"#00CC00\" align=\"center\" colspan=\"#{@items.length}\"><b>#{@name}</b></td></tr>\n"
    buffer << "<tr>\n"
    for item in @items
      buffer << item.to_html
    end
    buffer << "</tr>\n"
    buffer << "</table></td>\n"
    buffer.string
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

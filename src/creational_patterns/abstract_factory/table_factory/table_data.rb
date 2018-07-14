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
    buffer = []
    buffer.push("<td><table width=\"100%\" border=\"2\">\n")
    buffer.push("<tr><td bgcolor=\"#00CC00\" align=\"center\" colspan=\"" + @items.length.to_s + "\"><b>" + @name + "</b></td></tr>\n")
    buffer.push("<tr>\n")
    for item in @items
      buffer.push(item.to_html)
    end
    buffer.push("</tr>\n")
    buffer.push("</table></td>\n")
    return buffer.join
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

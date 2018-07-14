#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative '../factory/page'

# ˄

class TablePage < Page
  # ˅
  
  # ˄

  public
  def initialize(title, author)
    # ˅
    super(title, author)
    # ˄
  end

  public
  def to_html
    # ˅
    buffer = []
    buffer.push("<html><head><title>" + @title + "</title></head><body>\n")
    buffer.push("<h1>" + @title + "</h1>\n")
    buffer.push("<table width=\"80%\" border=\"3\">\n")
    for content in @contents
      buffer.push("<tr>" + content.to_html + "</tr>\n")
    end
    buffer.push("</table>\n")
    buffer.push("<hr><address>" + @author + "</address>\n")
    buffer.push("</body></html>\n")
    return buffer.join
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

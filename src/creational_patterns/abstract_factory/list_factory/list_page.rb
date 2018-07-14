#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative '../factory/page'

# ˄

class ListPage < Page
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
    buffer.push("<html><head><title>" + @title + "</title></head>\n")
    buffer.push("<body><h1>" + @title + "</h1>\n")
    buffer.push("<ul>\n")
    for content in @contents
      buffer.push(content.to_html)
    end
    buffer.push("</ul>\n")
    buffer.push("<hr><address>" + @author + "</address>")
    buffer.push("</body></html>\n")
    return buffer.join
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

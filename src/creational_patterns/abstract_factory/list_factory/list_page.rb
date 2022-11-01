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
    buffer = StringIO.new
    buffer << "<html><head><title>#{@title}</title></head>\n"
    buffer << "<body><h1>#{@title}</h1>\n"
    buffer << "<ul>\n"
    for content in @contents
      buffer << content.to_html
    end
    buffer << "</ul>\n"
    buffer << "<hr><address>#{@author}</address>"
    buffer << "</body></html>\n"
    buffer.string
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

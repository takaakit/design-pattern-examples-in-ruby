#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require 'stringio'
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
    buffer = StringIO.new
    buffer << "<html><head><title>#{@title}</title></head><body>\n"
    buffer << "<h1>#{@title}</h1>\n"
    buffer << "<table width=\"80%\" border=\"3\">\n"
    for content in @contents
      buffer << "<tr>#{content.to_html}</tr>\n"
    end
    buffer << "</table>\n"
    buffer << "<hr><address>#{@author}</address>\n"
    buffer << "</body></html>\n"
    return buffer.string
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

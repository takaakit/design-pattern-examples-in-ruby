#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'builder'

# ˄

class HTMLBuilder < Builder
  # ˅
  
  # ˄

  public
  attr_accessor :file_name

  public
  def initialize

    # File name to create
    @file_name = nil

    @writer = nil

    # ˅
    
    # ˄
  end

  # Make a title of HTML file
  public
  def create_title(title)
    # ˅
    @file_name = "#{title}.html"         # Set a title as a file name
    @writer = File.open(@file_name, "w")
    @writer.write("<html><head><title>#{title}</title></head><body>")
    @writer.write("<h1>#{title}</h1>")
    # ˄
  end

  # Make a section of HTML file
  public
  def create_section(section)
    # ˅
    @writer.write("<p>#{section}</p>")   # Write a section
    # ˄
  end

  # Make items of HTML file
  public
  def create_items(items)
    # ˅
    @writer.write("<ul>")   # Write items
    for item in items
      @writer.write("<li>#{item}</li>")
    end
    @writer.write("</ul>")
    # ˄
  end

  public
  def close
    # ˅
    @writer.write("</body></html>")
    @writer.close       # Close file
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

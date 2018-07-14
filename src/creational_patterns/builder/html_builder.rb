#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'builder'

# ˄

class HTMLBuilder < Builder
  # ˅
  
  # ˄

  public
  def initialize

    # File name to create
    @result = nil

    @writer = nil

    # ˅
    
    # ˄
  end

  # Make a title of HTML file
  public
  def create_title(title)
    # ˅
    @result = title + ".html"         # Set a title as a file name
    @writer = File.open(@result, "w")
    @writer.write("<html><head><title>" + title + "</title></head><body>")
    @writer.write("<h1>" + title + "</h1>")
    # ˄
  end

  # Make a section of HTML file
  public
  def create_section(section)
    # ˅
    @writer.write("<p>" + section + "</p>")   # Write a section
    # ˄
  end

  # Make items of HTML file
  public
  def create_items(items)
    # ˅
    @writer.write("<ul>")   # Write items
    for item in items
      @writer.write("<li>" + item + "</li>")
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
  public
  attr_accessor :result
  # ˄
end

# ˅

# ˄

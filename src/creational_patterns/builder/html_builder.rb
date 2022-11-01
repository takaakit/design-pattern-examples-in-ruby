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
    @_file_name = nil

    @writer = nil

    # ˅
    
    # ˄
  end

  # Make a title of HTML file
  public
  def create_title(title)
    # ˅
    @_file_name = "#{title}.html"         # Set a title as a file name
    @writer = File.open(@_file_name, "w")
    @writer.write("<html><head><title>#{title}</title></head><body>\n")
    @writer.write("<h1>#{title}</h1>\n")
    # ˄
  end

  # Make a section of HTML file
  public
  def create_section(section)
    # ˅
    @writer.write("<p>#{section}</p>\n")   # Write a section
    # ˄
  end

  # Make items of HTML file
  public
  def create_items(items)
    # ˅
    @writer.write("<ul>\n")   # Write items
    for item in items
      @writer.write("<li>#{item}</li>\n")
    end
    @writer.write("</ul>\n")
    # ˄
  end

  public
  def close
    # ˅
    @writer.write("</body></html>\n")
    @writer.close       # Close file
    # ˄
  end

  public
  def file_name
    # ˅
    @_file_name
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

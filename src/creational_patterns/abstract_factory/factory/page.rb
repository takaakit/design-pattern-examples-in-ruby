#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require 'pathname'
require_relative 'item'

# ˄

class Page
  # ˅
  
  # ˄

  public
  def initialize(title, author)

    @title = title

    @author = author

    @contents = []

    # ˅
    
    # ˄
  end

  public
  def to_html
    # ˅
    
    # ˄
  end

  public
  def add(item)
    # ˅
    @contents.push(item)
    # ˄
  end

  public
  def output
    # ˅
    file_name = @title + ".html"
    File.open(file_name, "w") do |f|
      f.puts(to_html)
    end
    puts "#{file_name} has been created."
    puts "Output File: #{Pathname.new(Dir.pwd).join(file_name)}"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

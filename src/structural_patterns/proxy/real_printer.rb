#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'printer'

# ˄

class RealPrinter < Printer
  # ˅
  
  # ˄

  public
  attr_accessor :printer_name

  public
  def initialize(name)

    @printer_name = name

    # ˅
    heavy_task("Creating an instance(" + @printer_name + ") of the Printer")
    # ˄
  end

  # Display a content with the name
  public
  def output(content)
    # ˅
    puts "=== " + @printer_name + " ==="
    puts content
    # ˄
  end

  # Heavy task (Please think so...)
  private
  def heavy_task(message)
    # ˅
    print message
    for i in 0..10
      sleep(0.5)
      print "."
    end
    puts "Done."
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'printer'

# ˄

class RealPrinter < Printer
  # ˅
  
  # ˄

  public
  def initialize(name)

    @name = name

    # ˅
    heavy_task("Creating an instance (#{name}) of the Printer")
    # ˄
  end

  public
  def get_name
    # ˅
    @name
    # ˄
  end

  public
  def change_name(name)
    # ˅
    @name = name
    # ˄
  end

  # Display a content with the name
  public
  def output(content)
    # ˅
    puts "=========="
    puts content
    puts "Printed by #{@name}"
    puts "=========="
    # ˄
  end

  # Heavy task (Please think so...)
  private
  def heavy_task(message)
    # ˅
    print message
    10.times do
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

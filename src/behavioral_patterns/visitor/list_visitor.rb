#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'visitor'

# ˄

class ListVisitor < Visitor
  # ˅

  # ˄

  public
  def initialize

    # Currently visited directory
    @current_directory = ""

    # ˅

    # ˄
  end

  # Visit a file
  public
  def visit_file(file)
    # ˅
    puts "#{@current_directory}/#{file}"
    # ˄
  end

  # Visit a directory
  public
  def visit_directory(directory)
    # ˅
    puts "#{@current_directory}/#{directory}"
    visited_directory = @current_directory
    @current_directory = "#{@current_directory}/#{directory.name}"
    directory.elements.each do |value|
      value.accept(self)
    end
    @current_directory = visited_directory
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

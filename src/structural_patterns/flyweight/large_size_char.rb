#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class LargeSizeChar
  # ˅
  
  # ˄

  public
  def initialize(char_name)

    # Display data of the large size character
    @display_data = ""

    # ˅
    begin
      File.open("#{File.dirname(__FILE__)}/big#{char_name}.txt", "r") do |file|
        @display_data = file.read
      end
    rescue
      @display_data = "#{char_name}?"
    end
    # ˄
  end

  # Display the large size character
  public
  def display
    # ˅
    puts @display_data
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

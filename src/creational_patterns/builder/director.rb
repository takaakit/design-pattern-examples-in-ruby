#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'builder'

# ˄

class Director
  # ˅
  
  # ˄

  public
  def initialize(builder)

    @builder = builder

    # ˅
    
    # ˄
  end

  # Construct a document
  public
  def build
    # ˅
    @builder.create_title("Greeting")                                    # Title
    @builder.create_section("Morning and Afternoon")                     # Section
    @builder.create_items(["Good morning.", "Hello."])                   # Items
    @builder.create_section("Evening")                                   # Other section
    @builder.create_items(["Good evening.", "Good night.", "Goodbye."])  # Other items
    @builder.close
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

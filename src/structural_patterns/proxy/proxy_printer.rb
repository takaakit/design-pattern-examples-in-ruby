#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'printer'
require_relative 'real_printer'

# ˄

# ProxyPrinter forwards requests to RealPrinter when appropriate.
class ProxyPrinter < Printer
  # ˅
  
  # ˄

  public
  def initialize(name)

    @current_name = name

    # A printer that actually prints
    @real = nil

    # ˅
    
    # ˄
  end

  public
  def get_name
    # ˅
    if !@real.nil?
      @real.get_name
    else
      @current_name
    end
    # ˄
  end

  public
  def change_name(name)
    # ˅
    unless @real.nil?
      @real.change_name(name)
    end

    @current_name = name
    # ˄
  end

  public
  def output(content)
    # ˅
    # Check to see if the RealPrinter had been created, create it if necessary.
    if @real.nil?
      @real = RealPrinter.new(@current_name)
    end
    
    @real.output(content)
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

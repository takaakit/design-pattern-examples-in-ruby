#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'printer'
require_relative 'real_printer'

# ˄

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
    return @current_name
    # ˄
  end

  public
  def change_name(name)
    # ˅
    if @real.nil? == false
      @real.printer_name = value
    end
    @current_name = name
    # ˄
  end

  public
  def output(content)
    # ˅
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

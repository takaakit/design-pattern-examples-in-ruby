#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'printer'
require_relative 'real_printer'

# ˄

class PrinterProxy < Printer
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
  def printer_name
    # ˅
    return @current_name
    # ˄
  end

  public
  def printer_name=(value)
    # ˅
    if @real.nil? == false
      @real.printer_name = value
    end
    @current_name = value
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

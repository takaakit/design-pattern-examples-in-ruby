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
  attr_accessor :printer_name

  public
  def initialize(name)

    @current_name = name

    @printer_name = nil

    # A printer that actually prints
    @real = nil

    # ˅
    
    # ˄
  end

  public
  def get_printer_name
    # ˅
    return @current_name
    # ˄
  end

  public
  def set_printer_name(value)
    # ˅
    if @real != nil
      @real.printer_name = value
      @current_name = value
    end
    # ˄
  end

  public
  def output(content)
    # ˅
    create_printer
    if @real != nil
      @real.output(content)
    end
    # ˄
  end

  # Create an actual printer
  private
  def create_printer
    # ˅
    if @real.nil?
      @real = RealPrinter.new(@current_name)
    end
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require 'tk'
require_relative 'history_command'
require_relative 'painting_command'
require_relative 'painting_canvas'

# ˄

class AppMain
  # ˅

  # ˄

  public
  def initialize

    # Painting history
    @history = HistoryCommand.new

    @canvas = nil

    @clear_button = nil

    @undo_button = nil

    @root = TkRoot.new

    # ˅
    create_widgets
    @root.mainloop
    # ˄
  end

  private
  def create_widgets
    # ˅
    @root.title = "Command Example"

    tk_canvas = TkCanvas.new(@root)
    tk_canvas.background = "white"
    tk_canvas.width = 400
    tk_canvas.height = 300
    tk_canvas.pack
    tk_canvas.bind("B1-Motion", proc{|e| on_dragged(e.x, e.y)})

    @canvas = PaintingCanvas.new(tk_canvas)

    @undo_button = TkButton.new(@root)
    @undo_button.text = "Undo"
    @undo_button.bind("Button-1", proc{|e| undo})
    @undo_button.pack("side" => "left")

    @clear_button = TkButton.new(@root)
    @clear_button.text = "Clear"
    @clear_button.bind("Button-1", proc{|e| clear})
    @clear_button.pack("side" => "left")
    # ˄
  end

  private
  def on_dragged(x, y)
    # ˅
    painting_command = PaintingCommand.new(@canvas, x, y)
    @history.add(painting_command)
    painting_command.execute
    # ˄
  end

  private
  def undo
    # ˅
    @canvas.clear
    @history.undo
    @history.execute
    # ˄
  end

  private
  def clear
    # ˅
    @canvas.clear
    @history.clear
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

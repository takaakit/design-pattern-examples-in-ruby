#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require 'tk'
require_relative 'context'
require_relative 'state'
require_relative 'daytime_state'

# ˄

class AppSafe < Context
  # ˅

  # ˄

  public
  def initialize

    # Current state
    @state = DaytimeState.instance

    @root = TkRoot.new

    # Current time
    @text_time = nil

    # Display of security center
    @text_message = nil

    # ˅
    @root.title = "State Example"

    time_frame = TkFrame.new(@root)
    time_frame.pack("anchor" => "w")

    text_time = TkEntry.new(time_frame, "width" => 20)
    text_time.grid("sticky" => "w")
    @text_time = text_time

    message_frame = TkFrame.new(@root)
    message_frame.pack

    scrollbar = TkScrollbar.new(message_frame).pack('fill' => 'y', 'side' => 'right')
    text_message = TkText.new(message_frame, "width" => 60, "height" => 20).pack('side' => 'right')
    text_message.yscrollbar(scrollbar)
    @text_message = text_message

    button_frame = TkFrame.new(@root)
    button_frame.pack

    button_use = TkButton.new(button_frame, "text" => "Use")
    button_use.bind("Button-1", proc{use_safe})         # Use button pressed
    button_use.grid("row" => 0, "column" => 0)

    button_alarm = TkButton.new(button_frame, "text" => "Alarm")
    button_alarm.bind("Button-1", proc{sound_bell})     # Alarm button pressed
    button_alarm.grid("row" => 0, "column" => 1)

    button_phone = TkButton.new(button_frame, "text" => "Phone")
    button_phone.bind("Button-1", proc{call})           # Phone button pressed
    button_phone.grid("row" => 0, "column" => 2)

    button_exit = TkButton.new(button_frame, "text" => "Exit")
    button_exit.bind("Button-1", proc{exit})            # Exit button pressed
    button_exit.grid("row" => 0, "column" => 3)

    Thread.start {
      count_time
    }

    @root.mainloop
    # ˄
  end

  # Set time
  public
  def set_time(hour)
    # ˅
    clock_string = "Current Time : "
    if hour < 10
      clock_string += "0#{hour}:00"
    else
      clock_string += "#{hour}:00"
    end
    puts clock_string
    @text_time.delete(0, "end")
    @text_time.insert(0, clock_string)
    @state.set_time(self, hour)
    # ˄
  end

  # Change state
  public
  def change_state(state)
    # ˅
    puts "The state changed from #{@state} to #{state}"
    @state = state
    # ˄
  end

  # Call a security guard room
  public
  def call_security_guards_room(msg)
    # ˅
    @text_message.insert("end", "call! #{msg}\n")
    @text_message.yview_moveto(1)     # Scroll to the bottom
    # ˄
  end

  # Record security log
  public
  def record_security_log(msg)
    # ˅
    @text_message.insert("end", "record ... #{msg}\n")
    @text_message.yview_moveto(1)     # Scroll to the bottom
    # ˄
  end

  private
  def use_safe
    # ˅
    @state.use_safe(self)
    # ˄
  end

  private
  def sound_bell
    # ˅
    @state.sound_bell(self)
    # ˄
  end

  private
  def call
    # ˅
    @state.call(self)
    # ˄
  end

  private
  def exit
    # ˅
    @root.destroy
    # ˄
  end

  public
  def count_time
    # ˅
    loop do
      for hour in 0..23
        set_time(hour)    # Set the time
        sleep(1)
      end
    end
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

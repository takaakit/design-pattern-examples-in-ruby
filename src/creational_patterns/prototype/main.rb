#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'framework/manager'
require_relative 'underline_display'
require_relative 'frame_display'

# Display a character string enclosed with a frame line, or drawn with an underline.

# Create a manager
manager = Manager.new()
emphasis_underline = UnderlineDisplay.new("~")
highlight_frame = FrameDisplay.new("+")
warning_frame = FrameDisplay.new("#")
manager.register_display("emphasis", emphasis_underline)
manager.register_display("highlight", highlight_frame)
manager.register_display("warning", warning_frame)

# Create displays
display_1 = manager.get_display("emphasis")
display_1.show("Nice to meet you.")
display_2 = manager.get_display("highlight")
display_2.show("Nice to meet you.")
display_1 = manager.get_display("warning")
display_1.show("Nice to meet you.")

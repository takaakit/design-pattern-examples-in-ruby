#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'framework/manager'
require_relative 'underline_display'
require_relative 'frame_display'

# Display a character string enclosed with a frame line, or drawn with an underline.

manager = Manager.new

# Register instances of the "Display" subclass
emphasis_underline = UnderlineDisplay.new("~")
manager.register_display("emphasis", emphasis_underline)
highlight_frame = FrameDisplay.new("+")
manager.register_display("highlight", highlight_frame)
warning_frame = FrameDisplay.new("#")
manager.register_display("warning", warning_frame)

# Require to display
display_1 = manager.get_display("emphasis")
display_1.show("Nice to meet you.")
display_2 = manager.get_display("highlight")
display_2.show("Nice to meet you.")
display_1 = manager.get_display("warning")
display_1.show("Nice to meet you.")

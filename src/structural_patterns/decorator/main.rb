#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'message_display'
require_relative 'side_frame'
require_relative 'full_frame'

# Display a character string with a decorative frame.

display_a = MessageDisplay.new("Nice to meet you.")
display_a.show

display_b = SideFrame.new(MessageDisplay.new("Nice to meet you."), "!")
display_b.show

display_c = FullFrame.new(SideFrame.new(MessageDisplay.new("Nice to meet you."), "!"))
display_c.show

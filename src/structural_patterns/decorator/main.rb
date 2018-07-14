#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'message_display'
require_relative 'side_frame'
require_relative 'full_frame'

# Display a character string with a decorative frame.

display_a = MessageDisplay.new("Nice to meet you.")
display_a.show

display_b = SideFrame.new(display_a, "!")
display_b.show

display_c = FullFrame.new(display_b)
display_c.show

display_d = SideFrame.new(
               FullFrame.new(
                   FullFrame.new(
                       SideFrame.new(
                           SideFrame.new(
                               FullFrame.new(
                                   MessageDisplay.new("See you again.")
                               ),
                               "#"
                           ),
                           "#"
                       )
                   )
               ),
               "#"
)
display_d.show

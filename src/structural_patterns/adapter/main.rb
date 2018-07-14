#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'print_message_display'

=begin
Display a character string as follows
  -- Nice to meet you --
or display it as follows.
  [[ Nice to meet you ]]
=end

p = PrintMessageDisplay.new("Nice to meet you")
p.print_weak
p.print_strong

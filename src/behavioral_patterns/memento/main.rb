#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'gamer'

=begin
Dice game collecting fruits.

* A gamer shakes a dice and the number determine the next state.
* Gamer's money increases or decreases depending on the number. The gamer sometimes gets desserts.
* The game is over if the gamer's money runs out.
=end

gamer = Gamer.new(100)
memento = gamer.create_memento()

for i in 0..99
  puts "==== " + i.to_s
  puts "Current state: " + gamer.to_string()

  gamer.play()

  puts "Gamer's money is " + gamer.money.to_s + "."

  if gamer.money > memento.money
    puts "(Save the current state because money has increased.)"
    memento = gamer.create_memento()
  elsif gamer.money < memento.money / 2
    puts "(Go back to the previous state because money has decreased.)"
    gamer.restore_memento(memento)
  end

  sleep(1)

  puts ""
end

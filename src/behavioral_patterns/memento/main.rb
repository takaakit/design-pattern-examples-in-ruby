#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'gamer'

=begin
Dice game collecting fruits.

* A gamer shakes a dice and the number determine the next state.
* Gamer's money increases or decreases depending on the number. The gamer sometimes gets desserts.
* The game is over if the gamer's money runs out.
=end

gamer = Gamer.new(100)    # The initial money is 100
memento = gamer.create_memento  # Save the initial state

for i in 0..9
  puts "==== Turn #{i + 1}"     # Display count

  gamer.play                    # Play a game

  # Determine the behavior of the Memento
  if gamer.money > memento.money
    puts "(Gamers' money is the highest ever, so record the current state.)"
    memento = gamer.create_memento
  elsif gamer.money < memento.money / 2
    puts "(Gamer's money is less than half of the highest amount, so return to the recorded state.)"
    gamer.set_memento(memento)
    puts "Gamer's money returns to #{gamer.money}."
  end

  puts ""

  sleep(1)
end

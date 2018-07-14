#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'hand'
require_relative 'player'
require_relative 'strategy_a'
require_relative 'strategy_b'

=begin
A game of rock-scissors-paper.
There are two strategies below.

* When winning a game, show the same hand at the next time.
* Calculate a hand from the previous hand stochastically.
=end

if ARGV.size() != 2
  puts "Usage: ruby main.rb RandomSeedNumber1 RandomSeedNumber2"
  puts "Ex.  : ruby main.rb 314 15"
else
  random_seed_1 = ARGV[0].to_i
  random_seed_2 = ARGV[1].to_i
  player1 = Player.new("Emily", StrategyA.new(random_seed_1))
  player2 = Player.new("James", StrategyB.new(random_seed_2))

  for i in 0..99
    next_hand_1 = player1.next_hand()
    next_hand_2 = player2.next_hand()
    if next_hand_1.is_stronger_than(next_hand_2)
      puts "Winner: " + player1.to_string()
      player1.won()
      player2.lost()
    elsif next_hand_2.is_stronger_than(next_hand_1)
      puts "Winner: " + player2.to_string()
      player1.lost()
      player2.won()
    else
      puts "Draw..."
      player1.drew()
      player2.drew()
    end
  end
  puts "RESULT:"
  puts player1.to_string()
  puts player2.to_string()
end

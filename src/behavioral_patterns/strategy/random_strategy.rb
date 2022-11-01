#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'hand_signal'
require_relative 'strategy'


# ˄

# Calculate a hand from the previous hand stochastically.
class RandomStrategy < Strategy
  # ˅
  
  # ˄

  public
  def initialize
    # ˅
    
    # ˄
  end

  public
  def show_hand_signal
    # ˅
    get_hand(Random.new.rand(3))
    # ˄
  end

  public
  def notify_game_result(result, own_hand, opponents_hand)
    # ˅
    # Do nothing
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

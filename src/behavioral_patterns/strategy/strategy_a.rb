#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'hand'
require_relative 'strategy'

# ˄

# When winning a game, show the same hand at the next time.
class StrategyA < Strategy
  # ˅

  # ˄

  public
  def initialize(random_seed)

    @won = false

    @pre_hand = get_hand(ROCK)

    # ˅

    # ˄
  end

  public
  def next_hand
    # ˅
    if @won == false
      random = Random.new()
      @pre_hand = get_hand(random.rand(4))
    end
    return @pre_hand
    # ˄
  end

  public
  def learn(win)
    # ˅
    @won = win
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

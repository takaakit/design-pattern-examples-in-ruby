#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'strategy'

# ˄

class Player
  # ˅

  # ˄

  public
  def initialize(name, strategy)

    @name = name

    @win_count = 0

    @loss_count = 0

    @game_count = 0

    @strategy = strategy

    # ˅

    # ˄
  end

  # Calculate a hand from the strategy.
  public
  def next_hand
    # ˅
    return @strategy.next_hand()
    # ˄
  end

  # Won a game.
  public
  def won
    # ˅
    @strategy.learn(true)
    @win_count += 1
    @game_count += 1
    # ˄
  end

  # Lost a game.
  public
  def lost
    # ˅
    @strategy.learn(false)
    @loss_count += 1
    @game_count += 1
    # ˄
  end

  # Drew a game.
  public
  def drew
    # ˅
    @game_count += 1
    # ˄
  end

  public
  def to_string
    # ˅
    return @name + " [" + @game_count.to_s + " games, " + @win_count.to_s + " won, " + @loss_count.to_s + " lost, " + (@game_count - @win_count - @loss_count).to_s + " drew]"
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

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

  # Show a hand signal from the strategy.
  public
  def show_hand_signal
    # ˅
    @strategy.show_hand_signal
    # ˄
  end

  # Notify a game result.
  public
  def notify_game_result(result, own_hand, opponents_hand)
    # ˅
    case result
    when GameResultType::WIN
      @win_count += 1
      @game_count += 1
    when GameResultType::LOSS
      @loss_count += 1
      @game_count += 1
    else
      @game_count += 1
    end

    @strategy.notify_game_result(result, own_hand, opponents_hand)
    # ˄
  end

  public
  def to_s
    # ˅
    "#{@name} [#{@game_count} games, #{@win_count} won, #{@loss_count} lost, #{(@game_count - @win_count - @loss_count)} drew]"
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

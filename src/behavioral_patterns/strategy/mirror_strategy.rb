#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'hand_signal'
require_relative 'strategy'

# ˄

# When winning a game, show the same hand at the next time.
class MirrorStrategy < Strategy
  # ˅

  # ˄

  public
  def initialize()

    @pre_opponents_hand = get_hand(HandSignal::ROCK)

    # ˅

    # ˄
  end

  public
  def show_hand_signal
    # ˅
    return @pre_opponents_hand
    # ˄
  end

  public
  def notify_game_result(result, own_hand, opponents_hand)
    # ˅
    @pre_opponents_hand = opponents_hand
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

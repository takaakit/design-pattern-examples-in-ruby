#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Strategy
  # ˅
  
  # ˄

  # Show a hand signal.
  public
  def show_hand_signal
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # Notify a game result.
  public
  def notify_game_result(result, own_hand, opponents_hand)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

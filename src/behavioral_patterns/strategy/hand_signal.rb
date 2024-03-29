#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class HandSignal
  # ˅

  # ˄

  # Rock
  ROCK = 0

  # Scissors
  SCISSORS = 1

  # Paper
  PAPER = 2

  # Characters of the hands
  @@name = ["Rock", "Scissors", "Paper"]

  public
  attr_reader :value

  public
  def initialize(value)

    # Values of rock, scissors and paper.
    @value = value

    # ˅

    # ˄
  end

  # Return true if "this" is stronger than "hand".
  public
  def is_stronger_than(hand)
    # ˅
    judge_game(hand) == 1
    # ˄
  end

  # Return false if "this" is weaker than "hand".
  public
  def is_weaker_than(hand)
    # ˅
    judge_game(hand) == -1
    # ˄
  end

  public
  def to_s
    # ˅
    @@name[@value]
    # ˄
  end

  # The draw is 0. "this" win is 1. "hand" win is -1.
  private
  def judge_game(hand)
    # ˅
    if @value == hand.value
      0
    elsif (@value + 1) % 3 == hand.value
      return 1
    else
      -1
    end
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅
# Characters of the hands
$hands = [HandSignal.new(HandSignal::ROCK), HandSignal.new(HandSignal::SCISSORS), HandSignal.new(HandSignal::PAPER)]

# Get an instance of the hand
def get_hand(hand_value)
  $hands[hand_value]
end
# ˄

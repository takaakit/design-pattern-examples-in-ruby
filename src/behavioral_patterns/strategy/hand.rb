#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Hand
  # ˅

  # ˄

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
    return judge_game(hand) == 1
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
  def to_string
    # ˅
    return name[@value]
    # ˄
  end

  # The draw is 0. "this" win is 1. "hand" win is -1.
  private
  def judge_game(hand)
    # ˅
    if @value == hand.value
      return 0
    elsif (@value + 1) % 3 == hand.value
      return 1
    else
      return -1
    end
    # ˄
  end

  # ˅
  public
  attr_accessor :value
  # ˄
end

# ˅

# Hands of rock-scissors-paper
ROCK = 0        # Rock
SCISSORS = 1    # Scissors
PAPER = 2       # Paper

# Characters of the hands
$hands = [Hand.new(ROCK), Hand.new(SCISSORS), Hand.new(PAPER)]

# Characters of the hands
$name = ['Rock', 'Scissors', 'Paper']

# Get an instance of the hand
def get_hand(hand_value)
  return $hands[hand_value]
end
# ˄

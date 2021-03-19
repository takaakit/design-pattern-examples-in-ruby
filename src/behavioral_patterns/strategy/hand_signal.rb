#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class HandSignal
  # ˅

  # ˄

  # Rock
  public
  ROCK = 0

  # Scissors
  public
  SCISSORS = 1

  # Paper
  public
  PAPER = 2

  public
  attr_reader :value

  # Characters of the hands
  private
  $name = ['Rock', 'Scissors', 'Paper']

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
  def to_s
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
  
  # ˄
end

# ˅
# Characters of the hands
$hands = [HandSignal.new(HandSignal::ROCK), HandSignal.new(HandSignal::SCISSORS), HandSignal.new(HandSignal::PAPER)]

# Get an instance of the hand
def get_hand(hand_value)
  return $hands[hand_value]
end
# ˄

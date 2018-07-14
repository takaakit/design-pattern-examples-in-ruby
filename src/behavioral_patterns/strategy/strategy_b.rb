#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'hand'
require_relative 'strategy'

# ˄

# Calculate a hand from the previous hand stochastically.
class StrategyB < Strategy
  # ˅

  # ˄

  public
  def initialize(random_seed)

    @history = [[1, 1, 1], [1, 1, 1], [1, 1, 1]]

    @pre_hand = Hand.new(ROCK)

    @cur_hand = Hand.new(ROCK)

    # ˅

    # ˄
  end

  public
  def next_hand
    # ˅
    random = Random.new()
    random_hand_value = random.rand(get_history_sum(@cur_hand.value))
    hand_value = 0
    if random_hand_value < @history[@cur_hand.value][0]
      hand_value = ROCK
    elsif random_hand_value < @history[@cur_hand.value][0] + @history[@cur_hand.value][1]
      hand_value = SCISSORS
    else
      hand_value = PAPER
    end
    @pre_hand = @cur_hand
    @cur_hand = get_hand(hand_value)
    return @cur_hand

    # ˄
  end

  public
  def learn(win)
    # ˅
    if win
      @history[@pre_hand.value][@cur_hand.value] += 1
    else
      @history[@pre_hand.value][(@cur_hand.value + 1) % 3] += 1
      @history[@pre_hand.value][(@cur_hand.value + 2) % 3] += 1
    end
    # ˄
  end

  private
  def get_history_sum(hand_value)
    # ˅
    sum = 0
    for i in 0..1
      sum += @history[hand_value][i]
    end
    return sum
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

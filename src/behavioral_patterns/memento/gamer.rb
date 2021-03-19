#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'memento'

# ˄

class Gamer
  # ˅

  # ˄

  public
  attr_accessor :money

  public
  def initialize(money)

    # Gamer's money
    @money = money

    # ˅

    # ˄
  end

  # Get current status
  public
  def create_memento
    # ˅
    return Memento.new(@money)
    # ˄
  end

  # Undo status
  public
  def set_memento(memento)
    # ˅
    @money = memento.money
    # ˄
  end

  # Play a game
  public
  def play
    # ˅
    random = Random.new
    dice = random.rand(1..6)  # Shake a dice
    puts "The number of dice is #{dice}."

    pre_money = @money
    case dice
    when 1, 3, 5
      # In case of odd...Money is halved
      @money /= 2
      puts "Gamer's money is halved: #{pre_money} -> #{@money}"
    when 2, 4, 6
      # In case of even...Money doubles
      @money *= 2
      puts "Gamer's money doubles: #{pre_money} -> #{@money}"
    else
      # Other...Exit
      puts "Unexpected value."
      exit 1
    end
    # ˄
  end

  public
  def to_s
    # ˅
    return "[money = #{@money}]"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

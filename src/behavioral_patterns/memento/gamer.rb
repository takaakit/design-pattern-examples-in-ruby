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

    # Acquired desserts
    @desserts = []

    # Dessert name table
    @desserts_name = ["Cake", "Candy", "Cookie"]

    # ˅

    # ˄
  end

  # Get current status
  public
  def create_memento
    # ˅
    memento = Memento.new(@money)
    for dessert in @desserts
      memento.add_dessert(dessert)
    end
    return memento
    # ˄
  end

  # Undo status
  public
  def restore_memento(memento)
    # ˅
    @money = memento.money
    @desserts = memento.desserts
    # ˄
  end

  # Play a game
  public
  def play
    # ˅
    random = Random.new()
    dice = random.rand(1..6)
    # In case of 1...Gamer's money increases
    if dice == 1
      @money += 100
      puts "Gamer's money increases."
    # In case of 2...Gamer's money halves
    elsif dice == 2
      @money /= 2
      puts "Gamer's money halves."
    # In case of 6...Gamer gets desserts
    elsif dice == 5
      got_dessert = get_dessert()
      puts "Gamer gets desserts(" + got_dessert + ")"
      @desserts.push(got_dessert)
    # Other...Nothing happens
    else
      puts "Nothing happens."
    end
    # ˄
  end

  public
  def to_string
    # ˅
    return "[money = " + @money.to_s() + ", desserts = " + @desserts.inspect + "]"
    # ˄
  end

  # Get a dessert
  private
  def get_dessert
    # ˅
    prefix = ""
    random = Random.new()
    if random.rand(0..1)
      prefix = "Delicious "
    end
    return prefix << @desserts_name.at(random.rand(0..2))
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

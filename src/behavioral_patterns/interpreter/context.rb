#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

# Analyze the syntax
class Context
  # ˅

  # ˄

  public
  def initialize(text)

    @array_text = text.split(" ")

    @current_text = @array_text[0]

    @iter_number = 0

    @array_size = @array_text.length

    # ˅
    @iter_number += 1
    # ˄
  end

  public
  def next_token
    # ˅
    if @iter_number < @array_size
      @current_text = @array_text[@iter_number]
      @iter_number += 1
    else
      @current_text = nil
    end
    return @current_text
    # ˄
  end

  public
  def get_token
    # ˅
    @current_text
    # ˄
  end

  public
  def slide_token(token)
    # ˅
    if token != @current_text
      abort("WARNING: " + token + " is expected but " + @current_iter.to_s + " was found.")
    end
    next_token
    # ˄
  end

  public
  def get_number
    # ˅
    if !get_token.match(/\D/)
      return get_token
    else
      abort("WARNING: " + get_token)
    end
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

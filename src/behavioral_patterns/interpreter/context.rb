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

    @array_text = text.split

    @current_index = 0

    @array_size = @array_text.length

    # ˅
    
    # ˄
  end

  public
  def next_token
    # ˅
    if @current_index < @array_size
      pre_index = @current_index
      @current_index += 1
      return @array_text[pre_index]
    else
      return nil
    end
    # ˄
  end

  public
  def get_token
    # ˅
    return @array_text[@current_index]
    # ˄
  end

  public
  def slide_token(token)
    # ˅
    if token != @array_text[@current_index]
      abort("WARNING: #{token} is expected but #{get_token} was found.")
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
      abort("WARNING: #{get_token}")
    end
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄

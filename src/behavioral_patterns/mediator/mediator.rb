#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Mediator
  # ˅
  
  # ˄

  public
  def colleague_changed
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def create_colleagues
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

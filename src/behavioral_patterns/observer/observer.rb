#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Observer
  # ˅
  
  # ˄

  public
  def update(changed_subject)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

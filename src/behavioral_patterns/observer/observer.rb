#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

# Defines an updating interface for objects that should be notified of changes in a subject.
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

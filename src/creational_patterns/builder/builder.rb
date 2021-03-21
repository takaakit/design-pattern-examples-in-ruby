#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class Builder
  # ˅
  
  # ˄

  public
  def create_title(title)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def create_section(section)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def create_items(items)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def close
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

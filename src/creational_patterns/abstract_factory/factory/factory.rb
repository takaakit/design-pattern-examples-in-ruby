#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'data_'
require_relative 'link'
require_relative 'page'

# ˄

class Factory
  # ˅
  
  # ˄

  public
  def create_page(title, author)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def create_link(name, url)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  public
  def create_data(name)
    # ˅
    raise NotImplementedError.new("This is an abstract method")
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative '../factory/factory'
require_relative 'list_data'
require_relative 'list_link'
require_relative 'list_page'

# ˄

class ListFactory < Factory
  # ˅
  
  # ˄

  public
  def create_page(title, author)
    # ˅
    ListPage.new(title, author)
    # ˄
  end

  public
  def create_link(name, url)
    # ˅
    ListLink.new(name, url)
    # ˄
  end

  public
  def create_data(name)
    # ˅
    ListData.new(name)
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

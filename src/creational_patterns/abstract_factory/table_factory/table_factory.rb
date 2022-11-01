#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative '../factory/factory'
require_relative 'table_data'
require_relative 'table_link'
require_relative 'table_page'

# ˄

class TableFactory < Factory
  # ˅
  
  # ˄

  public
  def create_page(title, author)
    # ˅
    TablePage.new(title, author)
    # ˄
  end

  public
  def create_link(name, url)
    # ˅
    TableLink.new(name, url)
    # ˄
  end

  public
  def create_data(name)
    # ˅
    TableData.new(name)
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

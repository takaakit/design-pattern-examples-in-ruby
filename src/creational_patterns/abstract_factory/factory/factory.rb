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
    
    # ˄
  end

  public
  def create_link(name, url)
    # ˅
    
    # ˄
  end

  public
  def create_data(name)
    # ˅
    
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅
require_relative '../list_factory/list_factory'
require_relative '../table_factory/table_factory'
def get_factory(class_name)
  cls = eval class_name
  return cls.new()
end
# ˄

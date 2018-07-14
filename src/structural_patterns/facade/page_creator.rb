#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require_relative 'data_library'
require_relative 'html_writer'

# ˄

class PageCreator
  # ˅
  
  # ˄

  public
  def create_simple_homepage(mail_address, html_file_name)
    # ˅
    address_book = DataLibrary.new().get_properties("addressbook")
    user_name = address_book[mail_address]
    writer = HtmlWriter.new(html_file_name)
    writer.heading(user_name + "\'s homepage")
    writer.paragraph("Welcome to " + user_name + "\'s homepage.")
    writer.paragraph("Please email me at this address.")
    writer.mailto(mail_address, user_name)
    writer.close
    puts html_file_name + " is created for " + mail_address + " (" + user_name + ")"
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄

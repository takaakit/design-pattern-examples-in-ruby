#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'page_creator'

=begin
Create a simple homepage through a Facade (PageCreator). The Facade gets info from
the DataLibrary and uses the info to create an HTML file.
=end

PageCreator.instance.create_simple_homepage("emily@example.com", "Homepage.html")

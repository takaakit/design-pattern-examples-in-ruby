#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'page_creator'

# Create a simple homepage.

PageCreator.new().create_simple_homepage("emily@example.com", "Homepage.html")

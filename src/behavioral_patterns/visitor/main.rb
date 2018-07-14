#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'directory'
require_relative 'file_'
require_relative 'list_visitor'

# Visitors visit a file system composed of files and directories, and displays a list of files/directories.

puts "Create a file system..."
root_dir = Directory.new("root")
home_dir = Directory.new("home")
bin_dir = Directory.new("bin")
etc_dir = Directory.new("etc")
emily_dir = Directory.new("emily")
james_dir = Directory.new("james")
olivia_dir = Directory.new("olivia")

root_dir.add(home_dir)
root_dir.add(bin_dir)
root_dir.add(etc_dir)

bin_dir.add(File_.new("ls", 100))
bin_dir.add(File_.new("mkdir", 50))
home_dir.add(emily_dir)
home_dir.add(james_dir)
home_dir.add(olivia_dir)

emily_dir.add(File_.new("homework.doc", 40))
james_dir.add(File_.new("homework.doc", 50))
james_dir.add(File_.new("app.exe", 60))
olivia_dir.add(File_.new("homework.doc", 70))
olivia_dir.add(File_.new("app.exe", 80))
olivia_dir.add(File_.new("tips.html", 90))

root_dir.accept(ListVisitor.new())

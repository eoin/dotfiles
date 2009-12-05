#!/usr/bin/env ruby

require 'fileutils'
require 'find'

# exclusions
exclude = [ ".git", "README", "install.rb" ]

# alternative link mappings, default is "name" => ".name"
map = { "emacs.el" => ".emacs" }

# home path
CURRENT = File.expand_path('.')
HOME = File.expand_path('~')

Link = lambda do |name|
  source = File.join(CURRENT, name)
  target = File.join(HOME, map[name] || ".#{name}")
  FileUtils.ln_s source, target rescue puts "#{target} exists."
end

Dir.glob("*") do |path|
  name = File.basename(path)
  Link[name] unless exclude.include?(name)
end

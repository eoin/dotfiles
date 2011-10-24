require "fileutils"
require "find"

task :install do
  exclusions = [ ".git", "README", "Rakefile" ]

  # alternative link mappings, default is "name" => ".name"
  map = { "emacs.el" => ".emacs" }

  # home path
  current = File.expand_path(File.dirname(__FILE__))
  home = File.expand_path('~')

  create_link = lambda do |name|
    source = File.join(current, name)
    target = File.join(home, map[name] || ".#{name}")
    puts "Linking '#{source}' to '#{target}'..."
    FileUtils.ln_s source, target rescue puts "#{target} exists."
  end

  Dir.glob("*") do |path|
    name = File.basename(path)
    create_link[name] unless exclusions.include?(name)
  end
end

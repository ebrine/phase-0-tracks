
require 'io/console'
name = STDIN.noecho {|i| i.gets}.chomp
p name

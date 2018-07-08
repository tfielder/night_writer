require "./lib/fileconnector.rb"
require "./lib/night_writer.rb"
require "./lib/braille_legend.rb"

arg_1 = ARGV[0]
arg_2 = ARGV[1]

file = FileConnector.new(arg_1, arg_2)

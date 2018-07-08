require "./lib/fileconnector"
require "./lib/night_writer"
require "./lib/braille_legend"

arg_1 = ARGV[0]
arg_2 = ARGV[1]

file = FileConnector.new(arg_1, arg_2)

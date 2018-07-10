require "./lib/fileconnector"
require "./lib/night_writer"
require "./lib/braille_legend"

file = FileConnector.new(ARGV[0], ARGV[1])

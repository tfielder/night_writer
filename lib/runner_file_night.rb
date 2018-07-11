require './lib/night_writer.rb'
require './lib/fileconnector.rb'
 Nw = NightWriter.new
 file = FileConnector.new(ARGV[0], ARGV[1], Nw)
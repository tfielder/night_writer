require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"
require "./lib/braille_legend"
require "./lib/fileconnector.rb"
require "./message.txt"
require "./braille.txt"
require
require "pry"

class NightWriterTest < Minitest::Test

  def test_it_exists
     assert_instance_of FileConnector.new(message.txt, braille.txt)
end
end
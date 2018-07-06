require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test
  def test_exists
    night_writer = NightWriter.new
    assert_instance_of NightWriter, night_writer
  end

  def test_newclass_prints_to_terminal
  #  night_writer = NightWriter.new("Night Writer Initialized")
    assert_equal "Night Writer Initialized", night_writer.rb
  end

end

require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test

  def test_it_exists
    #night_writer = File.new("newfile", "w+")
    assert_instance_of File, night_writer

    night_writer_2 = NightWriter.new(night_writer)
    assert_instance_of NightWriter, night_writer_2
  end
end

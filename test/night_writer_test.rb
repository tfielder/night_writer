require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"
require "./lib/braille_legend"

class NightWriterTest < Minitest::Test

  def test_it_exists
    skip
    night_writer = File.new("newfile", "w+")
    assert_instance_of File, night_writer

    night_writer_2 = NightWriter.new
    assert_instance_of NightWriter, night_writer_2
  end

  def test_it_translates
    skip
    night_writer = NightWriter.new
    assert_equal [["0.", "00", ".."]], night_writer.translate("h")
  end


  def test_words_translated
    night_writer = NightWriter.new
    assert_equal ["0.", "00", ".."][".0", "0.", ".."], night_writer.translate("hi")
  end
end

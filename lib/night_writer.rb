require './lib/braille_legend.rb'
require './lib/fileconnector.rb'
require 'pry'
# Oolala
class NightWriter
  attr_reader :translate
  def initialize
    #@fileconnector = FileConnector.new(ARGV[0], ARGV[1])
    #@newest = []                         #commented out so we can use it locally in translate.
    @braille_legend = {
    "a" => ["0.", "..", ".."],
    "b" => ["0.", "0.", ".."],
    "c" => ["00", "..", ".."],
    "d" => ["00", ".0", ".."],
    "e" => ["0.", ".0", ".."],
    "f" => ["00", "0.", ".."],
    "g" => ["00", "00", ".."],
    "h" => ["0.", "00", ".."],
    "i" => [".0", "0.", ".."],
    "j" => [".0", "00", ".."],
    "k" => ["0.", "..", "0."],
    "l" => ["0.", "0.", "0."],
    "m" => ["00", "..", "0."],
    "n" => ["00", ".0", "0."],
    "o" => ["0.", ".0", "0."],
    "p" => ["00", "0.", "0."],
    "q" => ["00", "00", "0."],
    "r" => ["0.", "00", "0."],
    "s" => [".0", "0.", "0."],
    "t" => [".0", "00", "0."],
    "u" => ["0.", "..", "00"],
    "v" => ["0.", "0.", "00"],
    "w" => [".0", "00", ".0"],
    "x" => ["00", "..", "00"],
    "y" => ["00", ".0", "00"],
    "z" => ["0.", ".0", "00"],
    "#" => [".0", ".0", "00"],
    "0" => [".0.0", ".000", "00.."],
    "1" => [".00.", ".0..", "00.."],
    "2" => [".00.", ".00.", "00.."],
    "3" => [".000", ".0..", "00.."],
    "4" => [".000", ".0.0", "00.."],
    "5" => [".00.", ".0.0", "00.."],
    "6" => [".000", ".00.", "00.."],
    "7" => [".000", ".000", "00.."],
    "8" => [".00.", ".000", "00.."],
    "9" => [".0.0", ".00.", "00.."],
    " " => ["..", "..", ".."],
    "!" => ["..", "00", "0."],
    "'" => ["..", "..", "0."],
    "," => ["..", "0.", ".."],
    "-" => ["..", "..", "00"],
    "." => ["..", "00", ".0"],
    "?" => ["..", "0.", "00"],
    "A" => ["..0.", "....", ".0.."],
    "B" => ["..0.", "..0.", ".0.."],
    "C" => ["..00", "....", ".0.."],
    "D" => ["..00", "...0", ".0.."],
    "E" => ["..0.", "...0", ".0.."],
    "F" => ["..00", "..0.", ".0.."],
    "G" => ["..00", "..00", ".0.."],
    "H" => ["..0.", "..00", ".0.."],
    "I" => ["...0", "..0.", ".0.."],
    "J" => ["...0", "..00", ".0.."],
    "K" => ["..0.", "....", ".00."],
    "L" => ["..0.", "..0.", ".00."],
    "M" => ["..00", "....", ".00."],
    "N" => ["..00", "...0", ".00."],
    "O" => ["..0.", "...0", ".00."],
    "P" => ["..00", "..0.", ".00."],
    "Q" => ["..00", "..00", ".00."],
    "R" => ["..0.", "..00", ".00."],
    "S" => ["...0", "..0.", ".00."],
    "T" => ["...0", "..00", ".00."],
    "U" => ["..0.", "....", ".000"],
    "V" => ["..0.", "..0.", ".000"],
    "W" => ["...0", "..00", ".0.0"],
    "X" => ["..00", "....", ".000"],
    "Y" => ["..00", "...0", ".000"],
    "Z" => ["..0.", "...0", ".000"]
    }
  end

  def translate(file_content)
    @holder_array = []
    character_array = file_content.chars          #pass the file content to the translation
    character_array.map do |keys|
    @holder_array << @braille_legend.values_at(keys)
  end
    @holder_array = @holder_array.flatten(1).compact
    @final_text = []
 binding.pry
    #do this 40 times
  while @holder_array.count > 40 
  40.times do
  line_1
  @final_text << "\n"

  line_2
  @final_text << "\n"

  line_3
  @final_text << "\n"
  
  @holder_array.shift(40)
  #add a newline, shift the @holder array by 40 and loop back.
  end
  end

  line_1
  @final_text << "\n"

  line_2
  @final_text << "\n"

  line_3
  @final_text << "\n"


  @final_text = @final_text.join


  return @final_text
end


def line_1
  @holder_array.each do |element|
    @final_text << element[0]
  end
end

def  line_2
  @holder_array.each do |element|
    @final_text << element[1]
  end
end

def line_3
  @holder_array.each do |element|
    @final_text << element[2]
  end
end
end

file = FileConnector.new(ARGV[0], ARGV[1])

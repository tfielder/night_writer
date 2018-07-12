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
    }.invert
  end

  def translate(file_content)
    @holder_array = []
    joined =[]
  
    array_1 = []
    array_2 = []
    array_3 = []

    character_array = file_content.chars          #pass the file content to the translation
    
    counter = 0

    while (character_array.size) > 0
      character_array.each do |character|
        if character == "\n"
          break
          end
          array_1 << character 
          counter += 1
      end
      character_array.shift(counter)
      
      counter = 1


      character_array.each do |character|
        if character == "\n"
          break
          end
          array_2 << character 
          counter += 1
      end
      character_array.shift(counter)
      counter = 1
    
      character_array.each do |character|
        if character == "\n"
          break
          end
          array_3 << character 
    
          counter += 1
      end
      character_array.shift(counter)
    #  binding.pry
      counter = 1
      
    end
    binding.pry

      tops = array_1.scan(/../)
      mid = array_2.scan(/../)  
      bots = array_3.scan(/../) 

#binding.pry

    character_array.map do |keys|
    @holder_array << @braille_legend.values_at(keys)
    
  end
    @holder_array = @holder_array.flatten(1).compact
    @final_text = []
 
end
end

file = FileConnector.new(ARGV[0], ARGV[1])








#   def translate(file_content)
#     @holder_array = []
#      joined = []
#     character_array = file_content.chars
#     @holder_array = character_array
#     #make an array of all of the characters and put it in an array.
    
                   
#      joined << character_array.take_while { |i| i != "\n" }
#     # or joined << character_array.take_while { |i| i <=>"\n" }


    
#     pineapple = character_array.keep_if{ |v| v =~ /[0,.]/ }
#     pineapple_split = pineapple.join
#     pineapple_done = pineapple_split.scan(/../)  
#     #removed []

#     pineapple_done.map do |keys|
#     @holder_array << @braille_legend[keys]
 
#   end
#     @holder_array = @holder_array.flatten(1).compact
#     @holder_array.join
#   end

# end

# file = FileConnector.new(ARGV[0], ARGV[1])

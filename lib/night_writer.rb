require ".braille_legend.rb"

class NightWriter
  attr_reader :translate

  def initialize
    @braille_legend =
  end

  def translate(input)
    @braille_legend.key(input) == @braille_legend.value
  end

end

handle = File.open(ARGV[0], "r")

incoming_text = handle.read
handle.close
counted_text = incoming_text.size
puts "Created '#{ARGV[1]}' containing #{counted_text} characters."

writer = File.open(ARGV[1], "w")

writer.write(incoming_text)

writer.close



#

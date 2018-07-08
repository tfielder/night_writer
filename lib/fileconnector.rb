class FileConnector


  def initialize
    @read_file = read_file
    # @fileconnector = FileConnector.new
    # @braille_legend = braille_legend

  end

  def read_file
    handle = ARGV[0]
    File.read(handle)
  end

  def write_file(translate)
    handle = ARGV[1]
    new_braille = File.open(handle, "w")
    new_braille.write(translate)
    new_braille.close

    read_new = File.open(handle, "r")
    number_of_characters = read_new.read.length
    puts "Created '#{ARGV[1]}' containing #{number_of_characters} characters."
  end
end

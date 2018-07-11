# takes input from ARGV[0], Then Prints To ARGV[1]
require "pry"
class FileConnector
  attr_reader :file_content,
              :write_file

  def initialize(arg_1, arg_2)
    @message_file = arg_1
    @conversion_file = arg_2
    read_file
    #@file_content      #commented out.
    write_file          #added to continue the tasks
  end

  def read_file
    reader = File.open(@message_file, 'r')        #put in ARGV to use one line
    @file_content = reader.read.chomp
    reader.close
  end

  def write_file
    braille_file = File.open(@conversion_file, 'w')    #put in ARGV to use one line
    braille_file.write(NightWriter.new.translate(@file_content))   #added to call the translation
    number_of_characters = @file_content.length
    puts "Created #{@conversion_file} containing #{number_of_characters} characters."
    braille_file.close
  end
end

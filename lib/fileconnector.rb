# takes input from ARGV[0], Then Prints To ARGV[1]
require "pry"
class FileConnector
  attr_reader :file_content,
              :write_file

  def initialize
    read_file
    @file_content
  end

  def read_file
    filename = ARGV[0]
    reader = File.open(filename, 'r')
    @file_content = reader.read.chomp
    reader.close
  end

  def write_file(translated_to_braille)
    endzone = ARGV[1]
    writer = File.open(endzone, 'w')
    number_of_characters = writer.write(translated_to_braille)
    number_of_characters = @file_content.length * 6
    puts "Created #{ARGV[1]} containing #{number_of_characters} characters."
    writer.close
  end
end

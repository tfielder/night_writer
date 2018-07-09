# takes input from ARGV[0], Then Prints To ARGV[1]
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
    @file_content = reader.read
    reader.close
  end

  def write_file(translated_to_braille)
    endzone = ARGV[1]
    writer = File.open(endzone, 'w')
    writer.write(translated_to_braille)
    writer.close
    puts "Created #{ARGV[1]} containing #{endzone.length} characters."
  end
end

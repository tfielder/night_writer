class FileConnector

  class FileConnector
    attr_reader :read_file,
                :write_file
    def initialize(message_file, braille_file)  #throw in the arguments here
      @read_file = message_file
      @message
      @file_content = braille_file
      read_file       #call it up when created
      write_file      #call it up when created
    end
    def read_file
      #deleted this line
      reader = File.open(@read_file, "r")
      @message = reader.read              #save the message from the readfile
      reader.close
    end

    def write_file
               #renamed variable
      writer = File.open(@file_content, "w")    #renamed variable
      writer.write(@file_content)
      writer.close
      number_of_characters = 10   #need to set equal to size of read_file
      puts "Created '#{@file_content}' containing #{number_of_characters} characters."
    end
  end


# #what we had before
#
#   def initialize()
#     @read_file = read_file
#     # @fileconnector = FileConnector.new
#     # @braille_legend = braille_legend
#
#   end
#
#   def read_file
#     handle = ARGV[0]
#     File.read(handle)
#   end
#
#   def write_file(translate)
#     handle = ARGV[1]
#     new_braille = File.open(handle, "w")
#     new_braille.write(translate)
#     new_braille.close
#
#     read_new = File.open(handle, "r")
#     number_of_characters = read_new.read.length
#     puts "Created '#{ARGV[1]}' containing #{number_of_characters} characters."
#   end
# end

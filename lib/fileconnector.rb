class FileConnector

handle = File.open(ARGV[0], "r")

 @incoming_text = handle.read
 handle.close
 @counted_text = incoming_text.chomp.size
 puts "Created '#{ARGV[1]}' containing #{counted_text} characters."


 writer = File.open(ARGV[1], "w")

   writer.write(@incoming_text)
   writer.close


   puts @braille_legend[input]
  @braille_legend[input]

end

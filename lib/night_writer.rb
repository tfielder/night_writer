handle = File.open(ARGV[0], "r")

incoming_text = handle.read
handle.close
counted_text = incoming_text.size
puts "Created '#{ARGV[1]}' containing #{counted_text} characters."

writer = File.open(ARGV[1], "w")

writer.write(counted_text)

writer.close



# class NightWriter
#   def initialize(file)
#     message_text = ARGV
#     puts "Night Writer Initialized"
#     puts message_text
#   end

#end

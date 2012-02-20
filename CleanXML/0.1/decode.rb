
require 'htmlentities'
coder = HTMLEntities.new
Dir["**/*.xml"].each {|xml|
File.open(xml, 'r+:UTF-8') do |f|    
  out = ""
  #puts "before " + xml
  #puts f.read.scan('/&#.+\;/')
   #puts "ready " + xml
   f.each do |line| 
    out << coder.decode(line)  
   end 
   f.pos = 0                      
   f.print out 
   f.truncate(f.pos)
  #end	
end
}
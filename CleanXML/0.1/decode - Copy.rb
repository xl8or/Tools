
require 'htmlentities'
coder = HTMLEntities.new
out = ""
Dir["**/*.html"].each {|html|
File.open("1.html", 'r') do |f|    
  contents=f.read
  tmp = contents.match(/<body>(.*)<\/body>/m)[1].strip 
  out << tmp
end
xml= html.match(/(.*)\./m)[1].strip
File.open(xml+".xml",'w:UTF-8') { |f2| f2.write(out)}
}
# system('dir')

require 'open3'

res = Open3.capture3("dir")
puts res.size()
idx = 0
res.each { |it|
  # puts it.class
  puts "#{idx} : #{it}"
  idx += 1
}
# puts res.class
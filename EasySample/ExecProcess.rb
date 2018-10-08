# system('dir')

require 'open3'
require 'systemu'

# res = Open3.capture3("dir")
# idx = 0
# res.each { |it|
#   puts "#{idx} : #{it}"
#   idx += 1
# }
# puts res.class

o, e, s = Open3.capture3("dir /?")

print(o + "\n")
print(e + "\n")
print("#{s.class}" + "\n")

# cmd = 'dir'
# status, stdout, stderr = systemu(cmd)
# print([status, stdout, stderr])
puts 'Old pwd: ' +  Dir.pwd;  puts "... -> ..."
Dir.chdir( 'Part_5._Interfaces_inheritance_and_polymorphism/railway_management/src' )
puts format( 'New pwd: ...%50s', Dir.pwd[-60,999])

require_relative "main/linked_list.rb"
require_relative "main/rl9_2.rb"
require_relative "main/station.rb"
require_relative "main/train.rb"
require_relative "main/trains_intention.rb"


items = [50, 20, 80, 10, 30, 70, 90, 5, 14,
         28, 41, 66, 75, 88, 96]
tree = Tree.new
items.each {|x| tree.insert(x)}
=begin
￼￼
#￼￼09_9780321714633_ch09.qxd  11/14/14  3:12 PM  Page 302
￼￼
￼￼￼￼
# 302 9. More Advanced Data Structures
=end

tree.inorder {|x| print x, " "}
puts
tree.preorder {|x| print x, " "}
puts
tree.postorder {|x| print x, " "}
puts

# Output:
# 5 10 14 20 28 30 41 50 66 70 75 80 88 90 96
# 50 20 10 5 14 30 28 41 80 70 66 75 90 88 96
# 5 14 10 28 41 30 20 66 75 70 88 96 90 80 50


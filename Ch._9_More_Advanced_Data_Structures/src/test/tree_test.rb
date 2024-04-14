puts 'Old pwd: ' +  Dir.pwd;  puts "... -> ..."
Dir.chdir( 'Part_5._Interfaces_inheritance_and_polymorphism/railway_management/src' )
puts format( 'New pwd: ...%50s', Dir.pwd[-60,999])

require_relative "main/linked_list.rb"
require_relative "main/rl9_1.rb"
require_relative "main/station.rb"
require_relative "main/train.rb"
require_relative "main/trains_intention.rb"



items = [1, 2, 3, 4, 5, 6, 7]
tree = Tree.new
items.each {|x| tree.insert(x)}
tree.traverse {|x| print "#{x} "}
puts


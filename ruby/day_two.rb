# Print the contents of an array of sixteen numbers, four numbers at a time, using just each
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
count = 1
arr.each do |n|
    print "#{n} "
    puts if (count % 4) == 0
    count += 1
end

# Now, do the same with each_slice
arr.each_slice(4) {|a| puts a.join(' ')}

# Alter Tree class to allow you to specify a new tree with a clean user interface

class Tree
    attr_accessor :children, :node_name

    def initialize(hash)
        @children = []
        @node_name = hash.keys.first
        hash[@node_name].each { |n,c| @children << Tree.new(n => c) }
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all(&block)}
    end

    def visit(&block)
        block.call self
    end
end

tree = Tree.new('grandpa' => {'father' => {'child1' => {}, 'child2' => {}}, 'uncle' => {'child3' => {}, 'child4' => {}}})

tree.visit_all { |n| puts n.node_name }

# Print the lines of a file having any occurrences of a phrase anywhere in that line
f = File.open("iverson.txt", "r")
lines = f.readlines
lines.each_with_index do |line, index|
    if line.downcase.match(/practice/i) then puts "line #{index + 1}: #{line}" end
end
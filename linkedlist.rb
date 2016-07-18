class LinkedList
	attr_accessor :value, :next_node
	def initialize(node = nil)
		@node = node
		#this will not just add one node but it will add the one node and all nodes that the node points to
	end

	def append(node)#adds value to the end of the list
		
	end

	def preappend(node)#adds value to the begining of the list
	end

	def size(node)#not node but cant think of what to put here
	end

	def head(node)#returns the first value of the list
	end

	def tail(node)#returns the last value of the list
	end

	def at(index)#returns the value at the given index
	end

	def pop #removes the last element
	end

	def contains? #returns true if the passed value is in the list otherwise returns false
	end

	def find(data)#returns the index value for the passed value or nil if not found
	end

	def to_s(msg = nil)#represents your linked list objects as strings so that you can preview them in the console
		msg ||= ""
		return msg[0..-4]if self.value.nil?
		msg << "#{self.value} ->"
		self.next_node.to_s
	end

end

class Node
	attr_accessor :value, :next_node

	def initialize(value = nil, next_node = nil)
		@value = value
		@next_node = next_node
	end

	def self.node_list(node, msg = nil)
		msg ||= ""
		return msg[0..-4]if node.nil?
		node_list(node.next_node, msg << "#{node.value} ->")
	end
end
node_app = Node.new("Appended")

node_5 = Node.new("5")
node_4 = Node.new("4", node_5)
node_3 = Node.new("3", node_4)
node_2 = Node.new("2", node_3)
node_1 = Node.new("1", node_2)

list_1 = LinkedList.new(node_1)

puts list_1.inspect


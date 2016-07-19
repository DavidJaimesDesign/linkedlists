class LinkedList
	attr_accessor :value, :next_node, :node
	def initialize(node)
		@head = node
		#this will not just add one node but it will add the one node and all nodes that the node points to
	end

	def append(node)#adds value to the end of the list
		self.tail.next_node = node
	end

	def preappend(node)#adds value to the begining of the list
		node.next_node = @head
		@head = node
	end

	def size#returns the size of the list
		count = 1 
		size = @head
		while size.next_node != nil
			size = size.next_node
			count += 1
		end
		count
	end

	def head#returns the first value of the list
		@head
	end

	def tail#returns the last value of the list
		tail = @head
		while tail.next_node != nil
			tail = tail.next_node
		end
		tail
	end

	def at(index, max = self.size, min = 0, midpoint = max/2)#returns the value at the given index
		return self.head if index == 0
		#return self.head.index

	end

	def pop #removes the last element
	end

	def contains?(value) #returns true if the passed value is in the list otherwise returns false
	end

	def find(data)#returns the index value for the passed value or nil if not found
	end

	def to_s(msg = nil)#represents your linked list objects as strings so that you can preview them in the console
		msg ||= ""
		return msg[0..-4]if self.node.value.nil?
		msg << "#{self.node.value} ->"
		self.node.next_node.to_s
	end

end

class Node
	attr_accessor :value, :next_node

	def initialize(value = nil, next_node = nil)
		@value = value
		@next_node = next_node
	end
end
node_app = Node.new("Appended")

node_5 = Node.new("5")
node_4 = Node.new("4")
node_3 = Node.new("3")
node_2 = Node.new("2")
node_1 = Node.new("1")

list_1 = LinkedList.new(node_1)

list_1.preappend(node_2)
list_1.preappend(node_3)
list_1.preappend(node_4)
list_1.preappend(node_5)

list_1.append(node_app)
puts list_1.inspect
puts list_1.size


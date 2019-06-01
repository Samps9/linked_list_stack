require_relative 'node'

class Stack

	def initialize()
		@head = nil
	end

	def push(value)
		@head = Node.new(value, @head)
	end

	def pop
		result = @head
		@head = result.next
		result.next = nil
		result
	end

	def peek
		@head.print
	end

	def reverse_list!
		current_node = @head
		prev_node = nil
		while (current_node)
			next_node = current_node.next
			current_node.next = prev_node

			prev_node = current_node
			current_node = next_node 
		end	
		@head = prev_node	
	end

	def infinite?
		hare = @head
		tort = @head
		while (1 > 0)
			return false if hare.nil?
			hare = hare.next
			return false if hare.nil?
			hare = hare.next
			tort = tort.next
			return true if hare == tort
		end
	end

	def print_list
		@head.print
		return if !@head.next
		node = @head
		node.print unless node.value.nil? while (node = node.next)
	end
end
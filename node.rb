class Node
	attr_reader :value
	attr_accessor :next

	def initialize(value, next_node=nil)
		@value = value
		@next = next_node
	end

	def print
		puts "[Node]: #{@value}"
	end	
end	
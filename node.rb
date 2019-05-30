class Node
	def initialize(value, next_node=nil)
		@value = value
		@next = next_node
	end

	def print
		"[Node]: #{value}"
	end	
end	
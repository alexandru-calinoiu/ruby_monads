LinkedListStack = Struct.new(:top, :pop) do
	def push(value)
		LinkedListStack.new(value, self)
	end

	def empty?
		pop.nil?
	end

	def self.empty
		new(nil, nil)
	end
end

stack = LinkedListStack.empty
p stack.push('hello').push('world').pop.top
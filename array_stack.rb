ArrayStack = Struct.new(:values) do
	def push(value)
		ArrayStack.new([value] + values)
	end

	def top
		values.first
	end

	def pop
		ArrayStack.new(values.drop(1))
	end

	def empty?
		vaues.empty?
	end

	def self.empty
		new([])
	end
end

stack = ArrayStack.empty
p stack.push('hello').push('world').pop.top
require_relative 'linked_list_stack'
require_relative 'array_stack'

module Stack
	def size
		if empty?
			0
		else
			pop.size + 1
		end
	end
end

LinkedListStack.include(Stack)

stack = LinkedListStack.empty
p stack.push('hello').push('world').size
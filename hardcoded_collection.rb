class HardcodedCollection
	def each(&block)
		yield 1
		yield 2
		yield 3
		yield 4
		yield 5
	end
end

HardcodedCollection.new.each do |i|
	p i
end

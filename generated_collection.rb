class GeneratedCollection
	def each(&block)
		number = 1
		while number <= 5
			yield number
			number = number + 1
		end
	end
end

GeneratedCollection.new.each do |i|
	p i
end

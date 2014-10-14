require_relative 'generated_collection'

module Collection
	def select(&block)
		results = []
		each do |number|
			results << number if block.call(number)
		end
		results
	end
end

GeneratedCollection.include(Collection)
p GeneratedCollection.new.select { |n| n.even? }

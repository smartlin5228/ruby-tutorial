module BookKeeping
	VERSION = 3
end
class Squares
	def initialize(num)
		@num = num
	end

	def square_of_sum
		return (@num * (1 + @num) / 2)** 2
	end
	def sum_of_squares 
		@result = 0
		for i in 1..@num
			@result += i ** 2
		end
		return @result
	end
	def difference
		self.square_of_sum - self.sum_of_squares
	end

end
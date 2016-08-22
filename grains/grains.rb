class Grains
	TOTAL_SQUARES = 64
	def self.square(n)
		2 ** (n - 1)
		#bit shifting
		#1 << (n - 1) 
	end
	def self.total
		(1..TOTAL_SQUARES).inject { |sum, n| sum + square(n) }
	end
end
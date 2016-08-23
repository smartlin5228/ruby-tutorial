module BookKeeping
	VERSION = 2
end
class Binary
	attr_reader :digits
	def initialize(num)
		raise ArgumentError unless valid?(num)
		@digits = num.chars.reverse.collect(&:to_i)
	end
	def to_decimal
    digits.each_with_index.inject(0) do |decimal, (digit, i)|
      decimal + digit * 2**i
    end
  end
	private
	def valid?(s)
    s.chars.all? { |char| ['0', '1'].include?(char) }
  end
end
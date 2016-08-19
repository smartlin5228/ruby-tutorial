require 'set'
module BookKeeping
	VERSION = 2
end
class Pangram
	def self.is_pangram?(str)
		alpha = ('a'..'z').to_set
		str.downcase.chars.each do |x|
			alpha.delete(x)
		end
		alpha.empty?
	end
end
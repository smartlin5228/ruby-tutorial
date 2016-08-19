module BookKeeping
	VERSION = 3
end
class Hamming
	def self.compute(str1, str2)
		distance = 0
		length = str1.length
		if length != str2.length
			raise(ArgumentError)
		end
		for i in 0..length
			if str1[i] != str2[i]
				distance += 1
			end
		end
		return distance
	end
end
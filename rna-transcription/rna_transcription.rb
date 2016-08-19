module BookKeeping
	VERSION = 4
end

class Complement
	def self.of_dna(str)
		result = ""
		invalid = false
		length = str.length
		for i in 0..length - 1
			case str[i]
			when 'G'
				result += 'C'
				next
			when 'C'
				result += 'G'
				next
			when 'A'
				result += 'U'
				next
			when 'T'
				result += 'A'
				next
			else
				return ""
			end
		end
		return result
	end
end

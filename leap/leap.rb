module BookKeeping
	VERSION = 2
end
class Year
	def self.leap?(year)
		return year % 400 == 0 if year % 100 == 0
		return year % 4 == 0
	end
end
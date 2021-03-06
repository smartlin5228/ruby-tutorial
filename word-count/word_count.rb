module BookKeeping
	VERSION = 1
end

class Phrase
	def initialize(text)
		@text = text
	end

	def word_count
		data = Hash.new(0)
		each_word do |word|
			data[word] += 1
		end
		data
	end

	private
	attr_reader :text
	def each_word
		text.downcase.scan(/\b[\w']+\b/) do |word|
			yield word
		end
	end
end

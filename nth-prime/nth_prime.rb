class Prime
	def self.nth(num)
		validate_input(num)
		find_prime(num)
		primes[num - 1]
	end

	private
	class << self
		def validate_input(num)
			raise ArgumentError unless num > 0
		end
		def find_prime(num)
			while primes.size < num
				primes << next_candidate if prime?(next_candidate)
				@next_candidate += 2
			end
		end
		def prime?(num)
			upper_bound = Math.sqrt(num).floor
			is_prime = true
			primes.each do |prime|
				break if prime > upper_bound
				break unless is_prime &&= !(num % prime == 0)
			end
			is_prime
		end
		def primes
			@primes ||= [2]
		end
		def next_candidate
			@next_candidate ||= 3
		end
	end
end
class Sieve
	attr_reader :limit
	private :limit
	def initialize(limit)
		@limit = limit
	end

	def primes
		@primes ||= helper_primes
	end
	private
	def helper_primes
		range = (2..limit).to_a
		primes = []
		return primes if limit < 2
		begin
			target = range.shift
			primes << target
			range.reject! {|i| i % target == 0}
		end until range.empty?
		primes
	end
end
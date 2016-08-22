class Bob
	def hey(str)
    return 'Whoa, chill out!' if str.upcase == str && str =~ /[A-Z]/
    return 'Sure.' if str.end_with?("?")
    return 'Fine. Be that way!' if str.strip.empty?
    return 'Whatever.'
  end
end

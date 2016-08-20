module BookKeeping
	VERSION = 2
end

class Robot
	attr_reader :name
	attr_reader :names_list
	@names_list = []

	def initialize
		@name ||= ('A'..'Z').to_a.shuffle[0,2].join << 3.times.map{rand(10)}.join
    if self.class.names_list.include?(@name)
      reset
    else
      self.class.names_list << @name
    end
	end
	def reset
		@name = ('A'..'Z').to_a.shuffle[0,2].join << 3.times.map{rand(10)}.join
	end
  def self.names_list
    @names_list
  end

end
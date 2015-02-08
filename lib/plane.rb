class Plane

	def initialize
		@flying = true
	end
	
	def flying?
		@flying
	end

	def land!
		raise "you are already grounded" if @flying == false
		@flying = false
	end

	def take_off
		raise "you are already flying" if @flying == true 
		@flying = true
	end

	def status
	  @flying == true ? 'flying' : 'grounded'
	end

end
require 'open-uri'

class Tinyarrow
	
	attr_accessor :target
	attr_reader	:url
	
	def initialize(target = 'http://tinyarro.ws')
		@target = target
		@url = create_arrow
	end
	
	def target=(target)
		if target.class == URI::HTTP
			@target = target
		else
			@target = URI.parse target
		end
		@target = URI.parse(target)
	end
	
	private
	def create_arrow(target = self.target)
		
		url = open('http://tinyarro.ws/api-create.php?url=' + target.to_s).read

		# Doesn't know how to handle Unicode
		#URI.parse url
	end
	
end

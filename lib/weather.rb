module Weather

	def initialize
		sky
	end

	def sky
		@sky 
	end

	def weather_forcast
		case rand(100) + 1
		when 1..85 then sunny
		when 86..100 then stormy
		end
	end

	def sunny
		@sky = 'Sunny'
	end

	def stormy
		@sky = 'Stormy'
	end



end


# def print_me
# 	# puts weather_man
# 	puts weather_man2
# end

# def weather
# 	weather = ['sunny', 'sunny', 'sunny', 'sunny' 'stormy']
# end

# 	def weather_man
# 		weather.sample
# 	end

# 	def weather_man2
# 		weather.send(:rand) returns float despite being on an array??
# 	end



# print_me
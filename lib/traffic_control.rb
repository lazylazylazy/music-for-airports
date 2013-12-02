require_relative 'plane.rb'
require_relative 'airport.rb'

class TrafficControl

	include Weather

def initialize
	storm_warning
end

def storm_warning(weather)
	if sky.stormy
	capacity = planes
	end
end


end
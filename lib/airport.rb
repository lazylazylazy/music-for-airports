require_relative 'plane.rb'

DEFAULT_CAPACITY = 7

class Airport

	def planes
		@planes ||= [] 
	end

	def plane_count
	planes.count
	end

	def land(plane)
    # raise "Hanger is full" if full?
    planes << plane
  end

  def take_off(plane)
  planes.delete(plane)
 	end

  def full?
  	plane_count == capacity
  end

   def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

   def capacity=(value)
    @capacity = value
  end



end
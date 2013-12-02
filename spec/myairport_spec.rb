require_relative'../lib/airport'
require_relative'../lib/plane'

describe Airport do
	let(:plane) {Plane.new}
	let(:runway) {Airport.new}

	def fill_hanger(runway)
		runway.capacity.times {runway.land (Plane.new)}
	end

	it 'should allow a plane to land' do
		expect(runway.plane_count).to be(0)
		runway.land(plane)
		expect(runway.plane_count).to be(1)
	end

	it 'should allow a plane to take off' do
		runway.land(plane)
		runway.take_off(plane)
		expect(runway.plane_count).to be(0)
	end

	it 'should know when the hanger is full' do
		expect(runway).not_to be_full
		fill_hanger(runway)
		expect(runway).to be_full
	end

end
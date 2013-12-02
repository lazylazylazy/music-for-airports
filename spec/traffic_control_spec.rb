require_relative'../lib/airport'
require_relative'../lib/plane'
require_relative'../lib/weather'
require_relative'../lib/traffic_control'

class Sky; include Weather; end

describe TrafficControl do 
	let(:plane) {Plane.new}
	let(:runway) {Airport.new} 
	let(:weather) {Sky.new}

	it 'should allow plane to land if sunny' do
		sky = double weather, sky: :sunny
		runway.land(plane)
		expect(runway.plane_count).to eq(1)
	end

	it 'should not allow plane to land if stormy' do
		sky = double weather, sky: :stormy
		runway.land(plane)
		# expect(runway.planes).to eq(0)
		expect(runway.plane_count).to eq(0)
	end

end
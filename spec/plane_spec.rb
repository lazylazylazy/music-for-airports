require_relative'../lib/plane'

describe Plane do 

	let(:plane) {Plane.new}

	it 'should be in the air when created' do
		expect(plane).to be_flying
	end

	it 'should be able to land' do
		plane.land
		expect(plane.flying?).to be_false
	end

	it 'should be able to take off again after landing' do
		plane.land
		plane.flying
		expect(plane.flying?).to be_true
	end

end
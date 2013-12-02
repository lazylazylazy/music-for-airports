require_relative '../lib/weather'

class Sky; include Weather; end

describe Weather do
	let (:weather) {Sky.new}
	
		it 'should return sunny' do
			weather.weather_forcast
			expect(weather.sky).to eq('Sunny')
		end

		it 'should return stormy when not sunny' do
			weather = double {Sky.new(weather_forcast.rand => 90)}
			expect(weather.weather_forcast).to eq('Stormy')
		end


	

end
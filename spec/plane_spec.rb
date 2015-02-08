require 'plane'

describe 'Plane' do

	let(:plane) { Plane.new }

  it 'should be flying when created' do 
    expect(plane.flying?).to be true
  end

  it 'can land' do
    plane.land!
    expect(plane.flying?).to be false
  end

  it 'can take off' do
  	plane.land!
  	plane.take_off
  	expect(plane.flying?).to be true
  end

  

end
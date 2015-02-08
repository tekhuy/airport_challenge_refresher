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

  it 'can not take off if flying' do
    expect{plane.take_off}.to raise_error(RuntimeError, "you are already flying")
  end

  it 'can notify of its status' do
    expect(plane.status).to eq ('flying')
    plane.land!
    expect(plane.status).to eq ('grounded')
  end

  it 'can not land if grounded' do
    plane.land!
    expect{plane.land!}.to raise_error(RuntimeError, "you are already grounded")
  end

end
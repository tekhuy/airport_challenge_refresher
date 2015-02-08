describe 'Plane' do

  it 'should be flying when created' do 
    expect(plane.flying?).to be_true
  end

  it 'can land' do
    plane.land!
    expect(plane.flying?).to be_false
  end

end
require 'big_will'


describe 'big_will' do
  let(:will) {BigWill.new('Will')}
  it 'should initialize with a trget string' do
    expect(will.key_word).to eq 'will'
  end
  it 'should take a string to parse through' do
    expect(will.new_string('will test string')).to_not eq nil
  end
  it 'will highlight consequtive letters of the key word' do
    expect(will.new_string('was is long life')).to eq '(w)as (i)s (l)ong (l)ife' 
  end

end

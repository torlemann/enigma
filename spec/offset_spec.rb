require './lib/offset'

RSpec.describe Offset do
  let(:offsets) {Offset.new}

  it 'exists' do
    expect(offsets).to be_a Offset
  end

  it 'has a character set' do
   expect(offsets.character_set.count).to eq(27)
  end

  it 'can create keys hash' do
    expected = {
      :a => 2,
      :b => 27,
      :c => 71,
      :d => 15
    }
    expect(offsets.split_keys('02715')).to eq (expected)
  end
end

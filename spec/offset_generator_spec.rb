require './lib/offset_offsets.rb'

RSpec.describe OffsetGenerator do
  let(:offsets) {OffsetGenerator.new}

  it 'exists' do
    expect(offsets).to be_a OffsetGenerator
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

  it "can create offsets" do
    expected = {
      :off_a => 1,
      :off_b => 0,
      :off_c => 2,
      :off_d => 5
    }
    expect(offsets.offset('040895')).to eq (expected)
  end

end

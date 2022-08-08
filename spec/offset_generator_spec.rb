require './lib/offset_generator.rb'

RSpec.describe OffsetGenerator do
  let(:offsets) {OffsetGenerator.new}

  it 'exists' do
    expect(offsets).to be_a OffsetGenerator
  end

  it "has a character set" do
   expect(offsets.character_set.count).to eq(27)
  end

end

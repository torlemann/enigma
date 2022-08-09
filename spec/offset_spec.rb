require_relative 'spec_helper'

RSpec.describe Offset do
  let(:offset) { Offset.new('040895') }

  it 'exists' do
    expect(offset).to be_a Offset
  end

  it 'has readable attributes' do
    expect(offset.date_string).to eq('040895')
    expect(offset.offset_hash).to eq({})
  end

  it "can create offsets" do
    expected = {
      :off_a => 1,
      :off_b => 0,
      :off_c => 2,
      :off_d => 5
    }
    expect(offset.date_splitter).to eq(expected)
  end
end

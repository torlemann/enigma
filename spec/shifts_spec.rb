require './lib/shifts.rb'

RSpec.describe ShiftGenerator do
  let(:shifts) {ShiftGenerator.new}

  it 'exists' do
    expect(shifts).to be_a ShiftGenerator
  end

  it 'has a character set' do
   expect(shifts.character_set.count).to eq(27)
  end

  it 'can create keys from key' do
    expected = {
      :a => 2,
      :b => 27,
      :c => 71,
      :d => 15
    }
    expect(shifts.keys('02715')).to eq (expected)
  end

  it "can create offsets" do
    expected = {
      :off_a => 1,
      :off_b => 0,
      :off_c => 2,
      :off_d => 5
    }
    expect(shifts.offsets('040895')).to eq (expected)
  end

end

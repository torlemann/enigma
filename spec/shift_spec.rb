require './lib/shifts.rb'

RSpec.describe Shift do
  let(:shifts) {Shift.new}

  it 'exists' do
    expect(shifts).to be_a Shift
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

  xit "can create offsets" do
    expected = {
      :off_a => 1,
      :off_b => 0,
      :off_c => 2,
      :off_d => 5
    }
    expect(shifts.offsets('040895')).to eq (expected)
  end

  xit "can create shifts" do
    expected = {
      :A => 3,
      :B => 27,
      :C => 73,
      :D => 20
    }
    expect(shifts.shifts('02715','040895')).to eq(expected)
  end

  xit "can rotate" do
    expect(shifts.rotate(3)["h"]).to eq "k"
    expect(shifts.rotate(27)["e"]).to eq "e"
    expect(shifts.rotate(73)["l"]).to eq "d"
  end

end

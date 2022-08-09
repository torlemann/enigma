require_relative 'spec_helper'

RSpec.describe Shift do
  let(:shift) { Shift.new }

  it 'exists' do
    expect(shift).to be_a Shift
  end

  it 'has a character set' do
    expect(shift.character_set.count).to eq(27)
  end

  it 'can create shifts' do
    key = Key.new('02715')
    offset = Offset.new('040895')
    shift1 = Shift.new(key, offset)
    expected = {
      A: 3,
      B: 27,
      C: 73,
      D: 20
    }
    expect(shift1.shifts('02715', '040895')).to eq(expected)
  end

  it 'can rotate' do
    expect(shift.rotate(3)['h']).to eq 'k'
    expect(shift.rotate(27)['e']).to eq 'e'
    expect(shift.rotate(73)['l']).to eq 'd'
  end
end

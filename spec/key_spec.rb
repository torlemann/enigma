require_relative 'spec_helper'

RSpec.describe Key do
  let(:key) { Key.new('12345') }

  it 'exists' do
    expect(key).to be_a Key
  end

  it 'has readable attributes' do
    expect(key.key_string.length).to eq 5
  end

  it 'can generate a 5 digit string' do
    key_gen = Key.new
    allow(key_gen).to receive(:rand).and_return(34_762)

    expect(key_gen.key_maker).to eq('34762')
  end

  it 'can create keys from key' do
    expected = {
      a: 2,
      b: 27,
      c: 71,
      d: 15
    }
    expect(key.key_splitter('02715')).to eq(expected)
  end
end

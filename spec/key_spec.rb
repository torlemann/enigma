
require './lib/key'

RSpec.describe Key do
  let(:key) {Key.new}

  it 'exists' do
    expect(key).to be_a Key
  end

  it 'has readable attributes' do
    expect(key.key.length).to eq 5
  end

  it 'can create keys from key' do
    expected = {
      :a => 2,
      :b => 27,
      :c => 71,
      :d => 15
    }
    expect(key.key_splitter('02715')).to eq(expected)
  end
end

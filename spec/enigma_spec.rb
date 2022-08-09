require 'date'
require './lib/shifts'
require './lib/enigma'

RSpec.describe Enigma do
  let(:enigma) { enigma = Enigma.new }

  it 'exists' do
    expect(enigma).to be_a(Enigma)
  end

  it 'can encrypt a message with a key and date' do
    expected = {
      encryption: 'keder ohulw',
      key: '02715',
      date: '040895'
    }
    expect(enigma.encrypt('hello world', '02715', '040895')).to eq(expected)
  end

  xit 'can decrypt a message with a key and date' do
    expected = {
      decryption: 'hello world',
      key: '02715',
      date: '040895'
    }
    expect(enigma.decrypt('keder ohulw', '02715', '040895')).to eq(expected)
  end

  xit 'can encrypt a message with a key using current date' do
    encrypted = {
      encryption: 'keder ohulw',
      key: '02715'
      # date: "figure this out"
    }
    expect(enigma.encrypt('hello world', '02715')).to eq(encrypted)
  end

  xit 'can decrypt a message with a key using current date' do
    encrypted = {
      encryption: 'keder ohulw',
      key: '02715'
      # date: "figure this out"
    }
    expected = {
      decryption: 'hello world',
      key: '02715'
      # date: ""
    }
    expect(enigma.decrypt(encrypted[:encryption], '02715')).to eq(expected)
  end

  xit 'can encrypt a message with random key and current date' do
    expected = {
      encryption: 'keder ohulw'
      # key: "random",
      # date: "current"
    }
    expect(enigma.encrypt('hello world')).to eq(expected)
  end
end

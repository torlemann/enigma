require_relative 'generator'

class Key
  include Generator
  attr_reader :key_string, :key_hash

  def initialize(key = key_maker)
    @key_string = key
    @key_hash = {}
  end

  # take key and split it up into 4 keys. first 2 digits is a key, 2nd 3rd digits is b key, 3rd 4th is c, 4th 5th is d. you will need to split up the key into four parts; since key is a string, access double digits by array index range. the parts need to be number values, so convert to integer. save values to alpha keys. save to hash to access values for generating shifts.
  def key_splitter(key_string)
    @key_hash[:a] = key_string[0..1].to_i
    @key_hash[:b] = key_string[1..2].to_i
    @key_hash[:c] = key_string[2..3].to_i
    @key_hash[:d] = key_string[3..4].to_i
    @key_hash
    # values to be double digit numbers coming from the key pass
  end
end

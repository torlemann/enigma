class Key

  attr_reader :key, :key_hash
  def initialize(key = h)
    @key = key
  end

  def key_splitter(key)
    {
      :a => key[0..1].to_i,
      :b => key[1..2].to_i,
      :c => key[2..3].to_i,
      :d => key[3..4].to_i
    }
  end


  #take key and split it up into 4 keys. first 2 digits is a key, 2nd 3rd digits is b key, 3rd 4th is c, 4th 5th is d. you will need to split up the key into four parts; since key is a string, access double digits by array index range. the parts need to be number values, so convert to integer. save values to alpha keys. save to hash to access values for generating shifts.
    def keys(key)

      @key_hash[:a] = key[0..1].to_i
      @key_hash[:b] = key[1..2].to_i
      @key_hash[:c] = key[2..3].to_i
      @key_hash[:d] = key[3..4].to_i
      #values to be double digit numbers coming from the key pass
    end


end

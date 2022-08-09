class Key

  attr_reader :key, :key_hash
  def initialize(key = (rand 10000..99999).to_s)
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

end

class Shift
  attr_reader :character_set

  # def initialize
  #   @character_set = ('a'..'z').to_a << ' '
  #   @key = Key.new
  #   @offset = Offset.new
  # end

  def initialize(key = Key.new, offset = Offset.new)
    @character_set = ('a'..'z').to_a << ' '
    @key = key
    @offset = offset
  end

  def shifts(key, offset)
    keys = @key.key_splitter(key)
    offsets = @offset.date_splitter
    {
      A: keys[:a] + offsets[:off_a],
      B: keys[:b] + offsets[:off_b],
      C: keys[:c] + offsets[:off_c],
      D: keys[:d] + offsets[:off_d]
    }
  end

  def rotate(shift)
    rotate = @character_set.rotate(shift)
    @character_set.zip(rotate).to_h
  end
end

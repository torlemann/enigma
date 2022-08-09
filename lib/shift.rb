class Shift
  attr_reader :character_set

  def initialize
    @character_set = ('a'..'z').to_a << ' '
  end

  def shifts(key, date)
    keys = keys(key)
    offsets = offsets(date)
    {
      A: keys[:a] + offsets[:off_a],
      B: keys[:b] + offsets[:off_b],
      C: keys[:c] + offsets[:off_c],
      D: keys[:d] + offsets[:off_d]
    }
  end

  def rotate(shift)
    rotate = @character_set.rotate(shift) # will shift alphabet as if it were a circle by shift valuepassed in
    @character_set.zip(rotate).to_h # zip will merge orig char_set with rotated char_set index by index to one array, but to_hash will orig char (by index) as key pointing to rotated char as value instead of as array
  end
end

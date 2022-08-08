class ShiftGenerator

  attr_reader :character_set
  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def keys(key)
    {
      a: key[0..1].to_i,
      b: key[1..2].to_i,
      c: key[2..3].to_i,
      d: key[3..4].to_i
    }
  end

  def offsets(date)
    date_sqr = (date.to_i ** 2).to_s
    digits = date_sqr[-4..-1]
    {
      off_a: digits[0].to_i,
      off_b: digits[1].to_i,
      off_c: digits[2].to_i,
      off_d: digits[3].to_i
    }
  end
end

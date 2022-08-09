class Shift

  attr_reader :character_set
  def initialize
    @character_set = ("a".."z").to_a << " "
    @key_hash = Hash.new
  end

#take key and split it up into 4 keys. first 2 digits is a key, 2nd 3rd digits is b key, 3rd 4th is c, 4th 5th is d. you will need to split up the key into four parts; since key is a string, access double digits by array index range. the parts need to be number values, so convert to integer. save values to alpha keys. save to hash to access values for generating shifts.
  def keys(key)

    @key_hash[:a] = key[0..1].to_i
    @key_hash[:b] = key[1..2].to_i
    @key_hash[:c] = key[2..3].to_i
    @key_hash[:d] = key[3..4].to_i
    #values to be double digit numbers coming from the key pass
  end

  # expected = {
  #   :a => 2,
  #   :b => 27,
  #   :c => 71,
  #   :d => 15
  # }

#take date, square the numeric form, so convert to integer first. need to get the last for digits - you can access them like above if you convert back to string form. access each digit by index value and save to hash like you did with the keys.
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
   rotate = @character_set.rotate(shift) #will shift alphabet as if it were a circle by shift valuepassed in
   @character_set.zip(rotate).to_h #zip will merge orig char_set with rotated char_set index by index to one array, but to_hash will orig char (by index) as key pointing to rotated char as value instead of as array
 end
end

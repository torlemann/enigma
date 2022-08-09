class Offset
  attr_reader :character_set

  def initialize
    @character_set = ('a'..'z').to_a << ' '
  end

  # take date, square the numeric form, so convert to integer first. need to get the last for digits - you can access them like above if you convert back to string form. access each digit by index value and save to hash like you did with the keys.
  def offsets(date)
    date_sqr = (date.to_i**2).to_s
    digits = date_sqr[-4..-1]
    {
      off_a: digits[0].to_i,
      off_b: digits[1].to_i,
      off_c: digits[2].to_i,
      off_d: digits[3].to_i
    }
  end
end

#
# The Offsets
# The offsets are found using the date of transmission.
#
# Consider the date formatted as a number, DDMMYY. If the date is August 4, 1995, it would be represented as 040895.
# Square the numeric form (1672401025)
# Take the last four digits (1025)
# A offset: The first digit (1)
# B offset: The second digit (0)
# C offset: The third digit (2)
# D offset: The fourth digit (5)

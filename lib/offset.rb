require_relative 'generator'

class Offset
  include Generator
  attr_reader :date_string, :offset_hash

  def initialize(date = current_date)
    @date_string = date
    @offset_hash = {}
  end

  def date_splitter
    date_sqr = (@date_string.to_i**2).to_s
    digits = date_sqr[-4..-1]
    @offset_hash[:off_a] = digits[0].to_i
    @offset_hash[:off_b] = digits[1].to_i
    @offset_hash[:off_c] = digits[2].to_i
    @offset_hash[:off_d] = digits[3].to_i
    @offset_hash
  end
end

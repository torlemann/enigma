require 'date'

module Generator
  def key_maker
    rand(10_000..99_999).to_s
  end

  def current_date
    Time.new.strftime('%d/%m/%y').delete('/').rjust(6, '0')
  end
end

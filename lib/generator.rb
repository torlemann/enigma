require 'date'

module Generator
  def key_maker
    rand(10_000..99_999).to_s
  end

  def current_date
    Time.new.strftime("%d/%m/%y").delete("/").to_i
  end
end

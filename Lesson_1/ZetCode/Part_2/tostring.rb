class Being
  def to_s
    "This is Being class"
  end
end

b = Being.new
puts b.to_s #explicit to_s
puts b #implicit to_s
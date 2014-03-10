class Parcel
  def initialize(height, width, length, weight)
    @height = height
    @width = width
    @length = length
    @weight = weight
  end

  def volume
    @volume = @height * @width * @length
  end

  def cost_to_ship
    self.volume
    (@volume + @weight).to_f * 0.1
  end
end

parcel= Parcel.new(5,5,5,10)
parcel.volume

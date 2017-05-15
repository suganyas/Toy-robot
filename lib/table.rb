class Table

  def initialize(length, width)
    if length > 0 && width >0
      @length = length
      @width = width
    end
  end

  def position_valid?(position)
    position.x < @length &&
    position.y < @width &&
    position.x >= 0 &&
    position.y >= 0
  end

end

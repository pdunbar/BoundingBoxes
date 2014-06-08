class BoundingBox

  def initialize(left, bottom, width, height)
    @left = left.to_i
    @bottom = bottom.to_i
    @width = width.to_i
    @height = height.to_i
  end

  def width
    @width
  end

  def height
    @height
  end

  def left
    @left
  end

  def right
    right = left + width
  end

  def top
    top = bottom + height
  end

  def bottom
    @bottom
  end

  def contains_point?(x,y)
    x = x.to_i
    y = y.to_i
    if left <= x && x <= right && bottom <= y && y <= top
      true
    else
      false
    end
  end

end

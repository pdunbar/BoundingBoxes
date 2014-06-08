class BoundingBox
  attr_reader :left, :height, :width, :bottom,
              :right, :top

  def initialize(left, bottom, width, height)
    @left = left.to_i
    @bottom = bottom.to_i
    @width = width.to_i
    @height = height.to_i
    @right = @left + @width
    @top = @bottom + @height
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

class BoundingBox
  attr_reader :left, :height, :width, :bottom,
              :right, :top

  def initialize(left, bottom, width, height)
    @left = left.to_f
    @bottom = bottom.to_f
    @width = width.to_f
    @height = height.to_f
    @right = @left + @width
    @top = @bottom + @height
  end

  def contains_point?(x,y)
    x = x.to_f
    y = y.to_f
    if left <= x && x <= right && bottom <= y && y <= top
      true
    else
      false
    end
  end

end

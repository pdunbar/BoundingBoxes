
class BoundingArea

  def initialize(rects_array)
    @rects = rects_array
  end

  def contains_point?(x,y)
    @x=x.to_f
    @y=y.to_f

    @rects.each do |rect|
      if rect.contains_point?(x,y) == true
        return true
      end
    end
    return false
  end

end

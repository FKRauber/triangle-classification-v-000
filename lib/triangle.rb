class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind

  end
  def validate_triangle
    true_tri = [(a+b>c), (a+c>b), (b+c>a)]
    [a, b, c].each { |side| true_tri << false if side <= 0 }
    raise TriangleError if true_tri.include?(false)
  end
end

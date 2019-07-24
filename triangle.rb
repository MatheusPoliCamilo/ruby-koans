# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  triangle = [a, b, c]

  raise TriangleError if triangle.uniq == [0]
  triangle.each { |value| raise TriangleError if value.negative? }
  raise TriangleError if a + b <= c || a + c <= b || b + c <= a

  if triangle.uniq.length == 3
    return :scalene
  end

  if triangle.uniq.length == 2
    return :isosceles
  end

  :equilateral
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

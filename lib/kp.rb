
class Square
  attr_reader :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end
  def ==(s)
    s.is_a?(Square) && s.x == @x && s.y == @y
  end
  def distance(s)
    #Math.sqrt((s.x - @x) ** 2 + (s.y - @y) ** 2)
      # no need to compute the square root...
    (s.x - @x) ** 2 + (s.y - @y) ** 2
  end
  def knight_squares
    [
      [ 1, -2 ], [ 2, -1 ], [ 2, 1 ], [ 1, 2 ],
      [ -1, 2 ], [ -2, 1 ], [ -2, -1 ], [ -1, -2 ]
    ].collect { |x, y| Square.new(@x + x, @y + y) }
  end
  def shortest_knight_path(target, accu=[])
    accu << self
    return accu if target == self
    knight_squares
      .collect { |s| [ s.distance(target), s ] }
      .sort_by { |d, s| d }
      .find { |d, s| ! (accu.include?(s) || d == 1) }
      .last
      .shortest_knight_path(target, accu)
  end
  def to_s
    "sq(#{@x}, #{@y})"
  end
end
def sq(x, y); Square.new(x, y); end


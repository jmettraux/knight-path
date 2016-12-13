
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
    Math.sqrt((s.x - @x) ** 2 + (s.y - @y) ** 2)
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
    dss = knight_squares
      .inject([]) { |a, ks| a << [ ks.distance(target), ks ] }
      .sort_by(&:first)
    while (
      accu.include?(dss.first.last) || dss.first.first.to_i == 1
    ); dss.shift; end
    dss.first.last.shortest_knight_path(target, accu)
  end
  def to_s
    "sq(#{@x}, #{@y})"
  end
end
def sq(x, y); Square.new(x, y); end

puts "== to 2, 1"
path = sq(0, 0).shortest_knight_path(sq(2, 1))
puts path.collect(&:to_s).join(' -> ')
p path.length
puts "== to 3, 2"
path = sq(0, 0).shortest_knight_path(sq(3, 2))
puts path.collect(&:to_s).join(' -> ')
p path.length
puts "== to 4, 2"
path = sq(0, 0).shortest_knight_path(sq(4, 2))
puts path.collect(&:to_s).join(' -> ')
p path.length
puts "== to 5, 2"
path = sq(0, 0).shortest_knight_path(sq(5, 2))
puts path.collect(&:to_s).join(' -> ')
p path.length
puts "== to 6, 3"
path = sq(0, 0).shortest_knight_path(sq(6, 3))
puts path.collect(&:to_s).join(' -> ')
p path.length
puts "== to 6, 3"
path = sq(0, 0).shortest_knight_path(sq(6, 3))
puts path.collect(&:to_s).join(' -> ')
p path.length



require 'kp'


describe 'Square#shortest_knight_path' do

  [
    [ sq(0, 0), sq(2, 1) ],
    [ sq(0, 0), sq(2, 1), sq(1, 3), sq(3, 2) ],
    [ sq(0, 0), sq(2, 1), sq(4, 2) ],
    [ sq(0, 0), sq(2, 1), sq(3, 3), sq(5, 2) ],
    [ sq(0, 0), sq(2, 1), sq(4, 2), sq(6, 3) ],
    [ sq(0, 0), sq(2, 1), sq(3, 3), sq(4, 5), sq(6, 4) ],
    [ sq(0, 0), sq(1, 2), sq(3, 3), sq(2, 5), sq(4, 4) ],
    [ sq(0, 0), sq(2, 1), sq(3, -1), sq(5, 0) ],
    [ sq(0, 0), sq(2, 1), sq(4, 2), sq(6, 3), sq(7, 5), sq(9, 4) ]
  ].each do |path|

    start = path.first
    target = path.last

    it "yields the shortest path from #{start} to #{target}" do

      expect(
        start.shortest_knight_path(target).join("\n")
      ).to eq(
        path.collect(&:to_s).join("\n")
      )
    end
  end
end

describe 'Square#shortest_knight_path_length_length' do

  [
    [ [ 0, 0 ], 0 ],
    [ [ 2, 1 ], 1 ],
    [ [ 7, 0 ], 5 ],
    [ [ 3, 2 ], 3 ],
    [ [ 4, 2 ], 2 ],
    [ [ 5, 2 ], 3 ],
    [ [ 6, 4 ], 4 ],
    [ [ 4, 4 ], 4 ],
    [ [ 5, 0 ], 3 ],
    [ [ 9, 4 ], 5 ],
    [ [ 2, 14 ], 8 ],
    [ [ 13, 15 ], 10 ],
    [ [ 15, 24 ], 13 ],
    [ [ 13, 17 ], 10 ],
    [ [ 24, 12 ], 12 ],
    [ [ 12, 12 ], 8 ],
    [ [ 24, 24 ], 16 ]
  ].each do |(x, y), d|

    it "yields the shortest path length from sq(0, 0) to (#{x}, #{y})" do

      ln = sq(0, 0).shortest_knight_path_length(sq(x, y))
      pa = sq(0, 0).shortest_knight_path(sq(x, y))

      expect(ln).to eq(pa.size - 1)
      expect(ln).to eq(d)
    end
  end
end


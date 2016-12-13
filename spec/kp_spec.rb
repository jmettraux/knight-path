
require 'kp'


describe 'Square#shortest_knight_path' do

  it 'yields the short path from sq(0, 0) to (2, 1)' do

    expect(
      sq(0, 0).shortest_knight_path(sq(2, 1)).join("\n")
    ).to eq([
      sq(0, 0), sq(2, 1)
    ].collect(&:to_s).join("\n"))
  end

  it 'yields the short path from sq(0, 0) to (3, 2)' do

    expect(
      sq(0, 0).shortest_knight_path(sq(3, 2)).join("\n")
    ).to eq([
      sq(0, 0), sq(2, 1), sq(1, 3), sq(3, 2)
    ].collect(&:to_s).join("\n"))
  end

  it 'yields the short path from sq(0, 0) to (4, 2)' do

    expect(
      sq(0, 0).shortest_knight_path(sq(4, 2)).join("\n")
    ).to eq([
      sq(0, 0), sq(2, 1), sq(4, 2)
    ].collect(&:to_s).join("\n"))
  end

  it 'yields the short path from sq(0, 0) to (5, 2)' do

    expect(
      sq(0, 0).shortest_knight_path(sq(5, 2)).join("\n")
    ).to eq([
      sq(0, 0), sq(2, 1), sq(3, 3), sq(5, 2)
    ].collect(&:to_s).join("\n"))
  end

  it 'yields the short path from sq(0, 0) to (6, 3)' do

    expect(
      sq(0, 0).shortest_knight_path(sq(6, 3)).join("\n")
    ).to eq([
      sq(0, 0), sq(2, 1), sq(4, 2), sq(6, 3)
    ].collect(&:to_s).join("\n"))
  end

  it 'yields the short path from sq(0, 0) to (6, 4)' do

    expect(
      sq(0, 0).shortest_knight_path(sq(6, 4)).join("\n")
    ).to eq([
      sq(0, 0), sq(2, 1), sq(3, 3), sq(4, 5), sq(6, 4)
    ].collect(&:to_s).join("\n"))
  end

  it 'yields the short path from sq(0, 0) to (4, 4)' do

    expect(
      sq(0, 0).shortest_knight_path(sq(4, 4)).join("\n")
    ).to eq([
      sq(0, 0), sq(1, 2), sq(3, 3), sq(2, 5), sq(4, 4)
    ].collect(&:to_s).join("\n"))
  end

  it 'yields the short path from sq(0, 0) to (5, 0)' do

    expect(
      sq(0, 0).shortest_knight_path(sq(5, 0)).join("\n")
    ).to eq([
      sq(0, 0), sq(2, 1), sq(3, -1), sq(5, 0)
    ].collect(&:to_s).join("\n"))
  end
end


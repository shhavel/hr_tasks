# frozen_string_literal: true

def countApplesAndOranges(s, t, a, b, apples, oranges)
  puts apples.count { |x| s <= a + x && a + x <= t }
  puts oranges.count { |x| s <= b + x && b + x <= t }
end

describe 'countApplesAndOranges' do
  it 'outputs count landing apples and oranges to STDOUT' do
    expect do
      countApplesAndOranges(7, 11, 5, 15, [-2, 2, 1], [5, -6])
    end.to output("1\n1\n").to_stdout
  end
end

# frozen_string_literal: true

def jumpingOnClouds(c, k)
  n = c.length
  e = 100
  i = 0
  raise ArgumentError if k < 0
  loop do
    i = (i + k) % n
    e -= 1
    e -= 2 if c[i] == 1
    return e if i == 0
  end
end

describe 'jumpingOnClouds' do
  it { expect(jumpingOnClouds([0, 0, 1, 0, 0, 1, 1, 0], 2)).to eq(92) }
  it { expect(jumpingOnClouds([1, 1, 1, 0, 1, 1, 0, 0, 0, 0], 3)).to eq(80) }
end

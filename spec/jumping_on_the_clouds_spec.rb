# frozen_string_literal: true

describe 'jumpingOnClouds' do
  def jumpingOnClouds(c)
    n = c.length
    jumps = 0
    pos = 0
    while pos < n - 1
      if (pos <= n - 3) && c[pos + 2] == 0
        pos += 2
      else
        pos += 1
      end
      jumps += 1
    end
    jumps
  end

  it { expect(jumpingOnClouds([0, 1, 0, 0, 0, 1, 0])).to eq(3) }
  it { expect(jumpingOnClouds([0, 0, 1, 0, 0, 1, 0])).to eq(4) }
  it { expect(jumpingOnClouds([0, 0, 0, 0, 1, 0])).to eq(3) }
  it { expect(jumpingOnClouds([0, 0, 0, 1, 0, 0])).to eq(3) }
end

# frozen_string_literal: true

# Period  Height
# 0          1
# 1          2
# 2          3
# 3          6
# 4          7
# 5          14
# 6          15
# 7          30
def utopianTree(n)
  (1..n).reduce(1) { |h, s| s.odd? ? 2 * h : h + 1 }
end

describe 'utopianTree' do
  it { expect(utopianTree(0)).to eq(1) }
  it { expect(utopianTree(1)).to eq(2) }
  it { expect(utopianTree(2)).to eq(3) }
  it { expect(utopianTree(3)).to eq(6) }
  it { expect(utopianTree(4)).to eq(7) }
  it { expect(utopianTree(5)).to eq(14) }
  it { expect(utopianTree(6)).to eq(15) }
  it { expect(utopianTree(7)).to eq(30) }
end

# frozen_string_literal: true

# Day Shared Liked Cumulative
# 1      5     2       2
# 2      6     3       5
# 3      9     4       9
# 4     12     6      15
# 5     18     9      24
def viralAdvertising(n)
  shared = 5
  cumulative = 0
  n.times do
    cumulative += (liked = shared / 2)
    shared = liked * 3
  end
  cumulative
end

describe 'viralAdvertising' do
  it { expect(viralAdvertising(1)).to eq(2) }
  it { expect(viralAdvertising(2)).to eq(5) }
  it { expect(viralAdvertising(3)).to eq(9) }
  it { expect(viralAdvertising(4)).to eq(15) }
  it { expect(viralAdvertising(5)).to eq(24) }
end

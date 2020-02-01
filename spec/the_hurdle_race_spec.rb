# frozen_string_literal: true

def hurdleRace(k, height)
  return 0 if height.empty?
  max_height = height.max
  return 0 if k >= max_height
  max_height - k
end

describe 'hurdleRace' do
  it { expect(hurdleRace(1, [1, 2, 3, 3, 2])).to eq(2) }
  it { expect(hurdleRace(4, [1, 6, 3, 5, 2])).to eq(2) }
  it { expect(hurdleRace(7, [2, 5, 4, 5, 2])).to eq(0) }
end

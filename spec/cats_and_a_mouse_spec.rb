# frozen_string_literal: true

def catAndMouse(x, y, z)
  a = (z - x).abs
  b = (z - y).abs
  return 'Mouse C' if a == b
  a < b ? 'Cat A' : 'Cat B'
end

describe 'catAndMouse' do
  it { expect(catAndMouse(1, 2, 3)).to eq('Cat B') }
  it { expect(catAndMouse(1, 3, 2)).to eq('Mouse C') }
end

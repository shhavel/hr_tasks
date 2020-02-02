# frozen_string_literal: true

def taumBday(b, w, bc, wc, z)
  optimal_bc = [bc, wc + z].min
  optimal_wc = [wc, bc + z].min
  b * optimal_bc + w * optimal_wc
end

describe 'taumBday' do
  it { expect(taumBday(10, 10, 1, 1, 1)).to eq(20) }
  it { expect(taumBday(5, 9, 2, 3, 4)).to eq(37) }
  it { expect(taumBday(3, 6, 9, 1, 1)).to eq(12) }
  it { expect(taumBday(7, 7, 4, 2, 1)).to eq(35) }
  it { expect(taumBday(3, 3, 1, 9, 2)).to eq(12) }
  it { expect(taumBday(3, 5, 3, 4, 1)).to eq(29) }
end

# frozen_string_literal: true

def saveThePrisoner(n, m, s)
  r = (s + m - 1) % n
  r.zero? ? n : r
end

describe 'saveThePrisoner' do
  it { expect(saveThePrisoner(4, 6, 2)).to eq(3) }
  it { expect(saveThePrisoner(5, 2, 1)).to eq(2) }
  it { expect(saveThePrisoner(5, 2, 2)).to eq(3) }
  it { expect(saveThePrisoner(7, 19, 2)).to eq(6) }
  it { expect(saveThePrisoner(3, 7, 3)).to eq(3) }
end

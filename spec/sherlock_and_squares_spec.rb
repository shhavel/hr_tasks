# frozen_string_literal: true

def squares(a, b)
  r1 = Math.sqrt(a).to_i
  r2 = Math.sqrt(b).to_i
  res = r2 - r1
  res += 1 if r1 * r1 == a
  res
end

describe 'squares' do
  it { expect(squares(4, 4)).to eq(1) }
  it { expect(squares(4, 5)).to eq(1) }
  it { expect(squares(4, 6)).to eq(1) }
  it { expect(squares(4, 7)).to eq(1) }
  it { expect(squares(4, 8)).to eq(1) }
  it { expect(squares(4, 9)).to eq(2) }
  it { expect(squares(4, 10)).to eq(2) }
  it { expect(squares(24, 49)).to eq(3) }
  it { expect(squares(3, 9)).to eq(2) }
  it { expect(squares(17, 24)).to eq(0) }
  it { expect(squares(35, 70)).to eq(3) }
  it { expect(squares(100, 1000)).to eq(22) }
end

# frozen_string_literal: true

def getTotalX(a, b)
  a_lcm = a.reduce(&:lcm)
  b_gcd = b.reduce(&:gcd)
  return 0 unless b_gcd % a_lcm == 0
  n = b_gcd / a_lcm
  return 1 if n == 1

  i = 2
  cnt_factors = 2
  while i * i < n
    if n % i == 0
      cnt_factors += 2
    end
    i += 1
  end
  if i * i == n
    cnt_factors += 1
  end
  cnt_factors
end

describe 'getTotalX' do
  it { expect(getTotalX([2, 6], [24, 36])).to eq(2) }
  it { expect(getTotalX([2, 4], [16, 32, 96])).to eq(3) }
  it { expect(getTotalX([3, 4], [24, 48])).to eq(2) }
end

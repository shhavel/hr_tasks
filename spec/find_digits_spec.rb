# frozen_string_literal: true

def findDigits(n)
  n.to_s.chars.map(&:to_i).count { |d| d != 0 && n % d == 0 }
end

describe 'findDigits' do
  it { expect(findDigits(12)).to eq(2) }
  it { expect(findDigits(1012)).to eq(3) }
end

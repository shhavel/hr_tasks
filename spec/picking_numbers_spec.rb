# frozen_string_literal: true

def pickingNumbers(a)
  return 0 if a.empty?
  h = Hash.new(0)
  a.each do |x|
    h[x] += 1
    h[x-1] += 1
  end
  h.values.max
end

describe 'pickingNumbers' do
  it { expect(pickingNumbers([4, 6, 5, 3, 3, 1])).to eq(3) }
  it { expect(pickingNumbers([1, 2, 2, 3, 1, 2])).to eq(5) }
end

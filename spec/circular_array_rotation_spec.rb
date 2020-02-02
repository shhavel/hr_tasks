# frozen_string_literal: true

def circularArrayRotation(a, k, queries)
  queries.map do |q|
    a[q - k % a.length]
  end
end

describe 'circularArrayRotation' do
  it { expect(circularArrayRotation([1, 2, 3], 0, [0, 1, 2])).to eq([1, 2, 3]) }
  it { expect(circularArrayRotation([1, 2, 3], 1, [0, 1, 2])).to eq([3, 1, 2]) }
  it { expect(circularArrayRotation([1, 2, 3], 2, [0, 1, 2])).to eq([2, 3, 1]) }
end

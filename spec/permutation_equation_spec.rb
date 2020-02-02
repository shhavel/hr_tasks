# frozen_string_literal: true

def permutationEquation(p)
  (1..p.length).map { |x| p.index(p.index(x) + 1) + 1 }
end

describe 'permutationEquation' do
  it { expect(permutationEquation([5, 2, 1, 3, 4])).to eq([4, 2, 5, 1, 3]) }
  it { expect(permutationEquation([2, 3, 1])).to eq([2, 3, 1]) }
  it { expect(permutationEquation([4, 3, 5, 1, 2])).to eq([1, 3, 5, 4, 2]) }
end

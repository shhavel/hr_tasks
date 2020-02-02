# frozen_string_literal: true

def angryProfessor(k, a)
  a.count { |t| t <= 0 } < k ? 'YES' : 'NO'
end

describe 'angryProfessor' do
  it { expect(angryProfessor(3, [-1, -3, 4, 2])).to eq('YES') }
  it { expect(angryProfessor(2, [0, -1, 2, 1])).to eq('NO') }
end

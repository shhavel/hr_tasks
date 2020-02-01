# frozen_string_literal: true

def marsExploration(s)
  s.each_char.with_index.count { |ch, i| ch != (i % 3 == 1 ? 'O' : 'S') }
end

describe 'marsExploration' do
  it { expect(marsExploration('SOSTOT')).to eq(2) }
  it { expect(marsExploration('SOSSPSSQSSOR')).to eq(3) }
  it { expect(marsExploration('SOSSOT')).to eq(1) }
  it { expect(marsExploration('SOSSOSSOS')).to eq(0) }
end

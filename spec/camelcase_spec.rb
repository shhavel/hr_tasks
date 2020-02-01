# frozen_string_literal: true

def camelcase(s)
  cnt = 1
  s.each_char.count { |ch| cnt += 1 if ch == ch.upcase }
  cnt
end

describe 'camelcase' do
  it { expect(camelcase('oneTwoThree')).to eq(3) }
  it { expect(camelcase('saveChangesInTheEditor')).to eq(5) }
end

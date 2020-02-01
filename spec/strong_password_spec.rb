# frozen_string_literal: true

def minimumNumber(n, password)
  numbers = '0123456789'.chars
  lower_case = 'abcdefghijklmnopqrstuvwxyz'.chars
  upper_case = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.chars
  special_characters = '!@#$%^&*()-+'.chars
  chars = password.chars
  cnt = 0
  cnt += 1 if (numbers & chars).empty?
  cnt += 1 if (lower_case & chars).empty?
  cnt += 1 if (upper_case & chars).empty?
  cnt += 1 if (special_characters & chars).empty?
  [cnt, 6 - n].max
end

describe 'minimumNumber' do
  it { expect(minimumNumber(3, 'Ab1')).to eq(3) }
  it { expect(minimumNumber(11, '#HackerRank')).to eq(1) }
  it { expect(minimumNumber(0, '')).to eq(6) }
  it { expect(minimumNumber(4, '0aA!')).to eq(2) }
  it { expect(minimumNumber(4, 'ΩΩΩ')).to eq(4) }
  it { expect(minimumNumber(1, 'a')).to eq(5) }
  it { expect(minimumNumber(1, '_')).to eq(5) }
end

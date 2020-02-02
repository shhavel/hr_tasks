# frozen_string_literal: true

def repeatedString(s, n)
  return n if s == 'a'
  arr = s.chars
  len = arr.length
  cnt_a = arr.count { |ch| ch == 'a' }
  return 0 if cnt_a.zero?
  cnt = n / len * cnt_a
  cnt + (n % len).times.count { |i| arr[i % arr.length] == 'a' }
end

describe 'repeatedString' do
  it { expect(repeatedString('aba', 10)).to eq(7) }
  it { expect(repeatedString('a', 1000000000000)).to eq(1000000000000) }
end

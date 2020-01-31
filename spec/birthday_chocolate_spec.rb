def birthday(s, d, m)
  n = s.length
  return 0 if m > n
  cnt = 0
  sum = s[0, m].reduce(:+)
  cnt += 1 if sum == d
  m.upto(n - 1) do |ending_index|
    sum += s[ending_index] - s[ending_index - m]
    cnt += 1 if sum == d
  end
  cnt
end

describe 'breakingRecords' do
  it { expect(birthday([1, 2, 1, 3, 2], 3, 2)).to eq(2) }
  it { expect(birthday([1, 1, 1, 1, 1, 1], 3, 2)).to eq(0) }
  it { expect(birthday([4], 4, 1)).to eq(1) }
end

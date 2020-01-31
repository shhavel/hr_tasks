def breakingRecords(scores)
  min = max = scores.first
  cnt_min, cnt_max = 0, 0
  1.upto(scores.length - 1) do |i|
    if scores[i] > max
      max = scores[i]
      cnt_max += 1
    elsif scores[i] < min
      min = scores[i]
      cnt_min += 1
    end
  end
  [cnt_max, cnt_min]
end

describe 'breakingRecords' do
  it { expect(breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1])).to eq([2, 4]) }
  it { expect(breakingRecords([3, 4, 21, 36, 10, 28, 35, 5, 24, 42])).to eq([4, 0]) }
end

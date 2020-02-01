def countingValleys(_n, s)
  lvl = 0
  cnt = 0
  s.each_char do |d|
    if d == 'U' # UP
      lvl += 1
      cnt += 1 if lvl.zero?
    else # DOWN
      lvl -= 1
    end
  end
  cnt
end

describe 'countingValleys' do
  it { expect(countingValleys(8, 'DDUUUUDD')).to eq(1) }
  it { expect(countingValleys(8, 'DDUUDDUU')).to eq(2) }
  it { expect(countingValleys(8, 'UUDDUUDD')).to eq(0) }
  it { expect(countingValleys(8, 'UDDDUDUU')).to eq(1) }
  it { expect(countingValleys(12, 'DDUUDDUDUUUD')).to eq(2) }
end

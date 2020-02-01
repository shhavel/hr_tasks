def dayOfProgrammer(year)
  return year % 4 == 0 ? "12.09.#{year}" : "13.09.#{year}" if year <= 1917
  return '26.09.1918' if year == 1918
  # year >= 1919
  if (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))
    "12.09.#{year}"
  else
    "13.09.#{year}"
  end
end

describe 'dayOfProgrammer' do
  it { expect(dayOfProgrammer(1984)).to eq('12.09.1984') }
  it { expect(dayOfProgrammer(2017)).to eq('13.09.2017') }
  it { expect(dayOfProgrammer(2016)).to eq('12.09.2016') }
  it { expect(dayOfProgrammer(1800)).to eq('12.09.1800') }
  it { expect(dayOfProgrammer(1918)).to eq('26.09.1918') }
end

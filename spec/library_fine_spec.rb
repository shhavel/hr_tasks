# frozen_string_literal: true

def libraryFine(ret_d, ret_m, ret_y, d, m, y)
  return 10_000 if ret_y > y
  return 0 if ret_y < y
  return 0 if ret_m < m
  return 500 * (ret_m - m) if ret_m > m
  return 0 if ret_d <= d
  15 * (ret_d - d)
end

describe 'libraryFine' do
  it { expect(libraryFine(9, 6, 2015, 6, 6, 2015)).to eq(45) }
  it { expect(libraryFine(1, 1, 2018, 1, 1, 2017)).to eq(10_000) }
  it { expect(libraryFine(31, 12, 2018, 1, 1, 2017)).to eq(10_000) }
end

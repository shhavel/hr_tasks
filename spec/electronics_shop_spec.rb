# frozen_string_literal: true

def getMoneySpent(keyboards, drives, b)
  return -1 if keyboards.empty? || drives.empty?
  keyboards.sort!
  drives.sort!
  max_sum = keyboards.first + drives.first
  return -1 if max_sum > b
  keyboards.each do |k|
    drives.each do |d|
      sum = k + d
      max_sum = sum if sum > max_sum && sum <= b
    end
  end
  max_sum
end

describe 'getMoneySpent' do
  it { expect(getMoneySpent([40, 50, 60], [5, 8, 12], 60)).to eq(58) }
  it { expect(getMoneySpent([3, 1], [5, 2, 8], 10)).to eq(9) }
  it { expect(getMoneySpent([4], [5], 5)).to eq(-1) }
end

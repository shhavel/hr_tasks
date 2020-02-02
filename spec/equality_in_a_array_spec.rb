# frozen_string_literal: true

def equalizeArray(arr)
  return 0 if arr.empty? || arr.one?
  arr.sort!
  el = arr.first
  max_cnt = 0
  cnt = 0
  arr.each do |x|
    if x == el
      cnt += 1
    else
      max_cnt = [max_cnt, cnt].max
      el = x
      cnt = 1
    end
  end
  max_cnt = [max_cnt, cnt].max
  arr.length - max_cnt
end

describe 'equalizeArray' do
  it { expect(equalizeArray([1, 2, 2, 3])).to eq(2) }
  it { expect(equalizeArray([3, 3, 2, 1, 3])).to eq(2) }
  it { expect(equalizeArray([1, 2, 3, 1, 2, 3, 3, 3])).to eq(4) }
end

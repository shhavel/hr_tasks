# frozen_string_literal: true

def quickSort(arr)
  return arr if arr.empty?
  pivot = arr[0]
  left, equal, right = [], [], []
  arr.each do |x|
    next (equal << x) if x == pivot
    (x < pivot ? left : right) << x
  end
  [*left, *equal, *right]
end

describe 'quickSort' do
  it { expect(quickSort([4, 5, 3, 7, 2])).to eq([3, 2, 4, 5, 7]) }
end

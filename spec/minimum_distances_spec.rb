# frozen_string_literal: true

def min_diff(arr)
  min_d = nil
  (1...arr.length).each do |i|
    d = arr[i] - arr[i-1]
    min_d ||= d
    min_d = [min_d, d].min
  end
  min_d
end

def minimumDistances(a)
  elem_indexes = a.each_with_object({}).with_index do |(x, h), i|
    h[x] ||= []
    h[x] << i
  end
  repetitive_elem_indexes = elem_indexes.select { |_num, idxs| idxs.length > 1 }
  return -1 if repetitive_elem_indexes.empty?
  repetitive_elem_indexes.values.map(&:sort).map { |ar| min_diff(ar) }.min
end

describe 'minimumDistances' do
  it { expect(minimumDistances([3, 2, 1, 2, 3])).to eq(2) }
  it { expect(minimumDistances([7, 1, 3, 4, 1, 7])).to eq(3) }
  it { expect(minimumDistances([1, 2, 3, 4, 10])).to eq(-1) }
end

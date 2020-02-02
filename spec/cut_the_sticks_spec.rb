# frozen_string_literal: true

def cutTheSticks(arr)
  sticks = []
  while arr.any?
    sticks << arr.length
    m = arr.min
    arr = arr.map { |x| x - m }.reject(&:zero?)
  end
  sticks
end

describe 'cutTheSticks' do
  it { expect(cutTheSticks([5, 4, 4, 2, 2, 8])).to eq([6, 4, 2, 1]) }
  it { expect(cutTheSticks([1, 2, 3, 4, 3, 3, 2, 1])).to eq([8, 6, 4, 1]) }
end

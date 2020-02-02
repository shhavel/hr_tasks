# frozen_string_literal: true

def designerPdfViewer(h, word)
  word.length * word.chars.map { |ch| h[ch.ord - 97] }.max
end

describe 'designerPdfViewer' do
  it { expect(designerPdfViewer([1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], 'abc')).to eq(9) }
  it { expect(designerPdfViewer([1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7], 'zaba')).to eq(28) }
end

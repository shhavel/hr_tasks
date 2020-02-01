def pageCount(n, p)
  [p/2, n/2 - p/2].min
end

describe 'pageCount' do
  it { expect(pageCount(6, 2)).to eq(1) }
  it { expect(pageCount(5, 4)).to eq(0) }
end

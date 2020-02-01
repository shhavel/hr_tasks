def sockMerchant(_n, ar)
  unpaired = []
  pairs = 0
  ar.each do |sock|
    if unpaired.include?(sock)
      unpaired.delete(sock)
      pairs += 1
    else
      (unpaired << sock).sort!
    end
  end
  pairs
end

describe 'sockMerchant' do
  it { expect(sockMerchant(7, [1, 2, 1, 2, 1, 3, 2])).to eq(2) }
  it { expect(sockMerchant(9, [10, 20, 20, 10, 10, 30, 50, 10, 20])).to eq(3) }
  it { expect(sockMerchant(10, [1, 1, 3, 1, 2, 1, 3, 3, 3, 3])).to eq(4) }
end

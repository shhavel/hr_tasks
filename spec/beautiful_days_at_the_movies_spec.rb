# frozen_string_literal: true

def beautifulDays(i, j, k)
  (i..j).count do |d|
    (d - d.to_s.reverse.to_i).abs % k == 0
  end
end

describe 'beautifulDays' do
  it { expect(beautifulDays(20, 23, 6)).to eq(2) }
  it { expect(beautifulDays(13, 45, 3)).to eq(33) }
end

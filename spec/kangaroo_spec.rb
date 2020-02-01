def kangaroo(x1, v1, x2, v2)
  if x1 == x2
    'YES'
  elsif v2 == v1
    'NO'
  else
    ((x1 - x2) % (v2 - v1) == 0) && ((x1 - x2) > 0 == (v2 - v1) > 0) ? 'YES' : 'NO'
  end
end

describe 'kangaroo' do
  it { expect(kangaroo(0, 3, 4, 2)).to eq('YES') }
  it { expect(kangaroo(0, 2, 5, 3)).to eq('NO') }
end

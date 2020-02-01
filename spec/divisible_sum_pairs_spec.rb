def divisibleSumPairs(n, k, ar)
  cnt = 0
  0.upto(n - 2) do |i|
    (i + 1).upto(n - 1) do |j|
      # puts "ar[i] + ar[j] = #{ar[i]} + #{ar[j]} = #{ar[i] + ar[j]}"
      cnt += 1 if (ar[i] + ar[j]) % k == 0
    end
  end
  cnt
end

describe 'divisibleSumPairs' do
  it { expect(divisibleSumPairs(6, 3, [1, 3, 2, 6, 1, 2])).to eq(5) }
end

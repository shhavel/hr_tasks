# frozen_string_literal: true

# def kaprekarNumbers(p, q)
#   nums = (p..q).select do |n|
#     len = n.to_s.length
#     sq = (n * n).to_s
#     sq[0, sq.length - len].to_i + sq[(sq.length - len)..-1].to_i == n
#   end
#   print nums.any? ? nums.join(' ') : 'INVALID RANGE'
# end

def kaprekarNumbers(p, q)
  nums = (p..q).select do |n|
    sq = n * n
    ten_degree = 10 ** n.digits.length
    (sq / ten_degree) + (sq % ten_degree) == n
  end
  print nums.any? ? nums.join(' ') : 'INVALID RANGE'
end

describe 'kaprekarNumbers' do
  it { expect { kaprekarNumbers(1, 100) }.to output('1 9 45 55 99').to_stdout }
  it { expect { kaprekarNumbers(100, 300) }.to output('297').to_stdout }
  it { expect { kaprekarNumbers(4, 5) }.to output('INVALID RANGE').to_stdout }
end

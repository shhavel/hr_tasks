def bonAppetit(bill, k, b)
  amount = (bill.reduce(:+) - bill[k]) / 2
  print amount == b ? 'Bon Appetit' : b - amount
end

describe 'bonAppetit' do
  it { expect { bonAppetit([3, 10, 2, 9], 1, 12) }.to output('5').to_stdout }
  it { expect { bonAppetit([3, 10, 2, 9], 1, 7) }.to output('Bon Appetit').to_stdout }
end

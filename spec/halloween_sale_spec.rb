# frozen_string_literal: true

def howManyGames(p, d, m, s)
  price = p
  cnt = 0
  while s >= price
    s -= price
    cnt += 1
    price -= d
    price = [price, m].max
  end
  cnt
end

describe 'howManyGames' do
  it { expect(howManyGames(20, 3, 6, 80)).to eq(6) }
  it { expect(howManyGames(20, 3, 6, 85)).to eq(7) }
end

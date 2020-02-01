def migratoryBirds(arr)
  return if arr.empty?
  arr.sort!
  curr, curr_cnt, max_cnt = arr.first, 0, 0
  cand = curr
  arr.sort.each do |x|
    if x == curr
      curr_cnt += 1
    else
      if max_cnt < curr_cnt
        max_cnt = curr_cnt
        cand = curr
      end
      curr = x
      curr_cnt = 1
    end
  end
  max_cnt < curr_cnt ? arr.last : cand
end

describe 'migratoryBirds' do
  it { expect(migratoryBirds([1, 4, 4, 4, 5, 3])).to eq(4) }
  it { expect(migratoryBirds([1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4])).to eq(3) }
  it { expect(migratoryBirds([1, 4, 4, 4, 3, 3])).to eq(4) }
end

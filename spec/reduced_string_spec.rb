# frozen_string_literal: true

def superReducedString(s)
  letters = s.chars
  n = letters.length
  i = (0..(n-2)).find do |j|
    letters[j] == letters[j + 1]
  end
  return s.empty? ? 'Empty String' : s unless i
  i == 0 ? superReducedString(s[2..-1]) : superReducedString(s[0..i-1] + s[i+2..-1])
end

describe 'superReducedString' do
  it { expect(superReducedString('aaabccddd')).to eq('abd') }
  it { expect(superReducedString('aa')).to eq('Empty String') }
  it { expect(superReducedString('baab')).to eq('Empty String') }
end

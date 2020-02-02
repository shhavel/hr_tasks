# frozen_string_literal: true

def appendAndDelete(s, t, k)
  ident_length = 0
  t.chars.each_with_index do |ch, i|
    if s.chars[i] && ch == s.chars[i]
      ident_length += 1
    else
      break
    end
  end
  # Chars to del s.length - ident_length
  # Chars to add t.length - ident_length
  operations = s.length - ident_length + t.length - ident_length

  return 'No' if operations > k
  # return 'Yes' if k == operations
  return 'Yes' if (k - operations).even?
  return 'Yes' if s.length + t.length < k # delete s completely and then fill with t chars
  'No'
end

describe 'appendAndDelete' do
  it { expect(appendAndDelete('hackerhappy', 'hackerrank', 9)).to eq('Yes') }
  it { expect(appendAndDelete('aba', 'aba', 7)).to eq('Yes') }
  it { expect(appendAndDelete('ashley', 'ash', 2)).to eq('No') }
  it { expect(appendAndDelete('ash', 'ashley', 2)).to eq('No') }
  it { expect(appendAndDelete('ash', 'ashley', 3)).to eq('Yes') }
  it { expect(appendAndDelete('ashley', 'ash', 3)).to eq('Yes') }
  it { expect(appendAndDelete('as', 'aso', 1)).to eq('Yes') }
  it { expect(appendAndDelete('aso', 'as', 1)).to eq('Yes') }
end

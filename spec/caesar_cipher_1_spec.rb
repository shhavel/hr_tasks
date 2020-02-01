# frozen_string_literal: true

def caesarCipher(s, k)
  return s if s.empty? || (r = k % 26) == 0
  alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  upcase_alphabet = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  s.chars.map do |ch|
    if alphabet.include?(ch)
      alphabet[(alphabet.index(ch) + r) % 26]
    elsif upcase_alphabet.include?(ch)
      upcase_alphabet[(upcase_alphabet.index(ch) + r) % 26]
    else
      ch
    end
  end.join
end

describe 'caesarCipher' do
  it { expect(caesarCipher('middle-Outz', 2)).to eq('okffng-Qwvb') }
  it { expect(caesarCipher('Always-Look-on-the-Bright-Side-of-Life', 5)).to eq('Fqbfdx-Qttp-ts-ymj-Gwnlmy-Xnij-tk-Qnkj') }
end

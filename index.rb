@Alphabets = {
  " "=> " ",
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(char)
  @Alphabets[char]
end

puts decode_char('.-')


def decode_word(word)
  chars = word.split
  decoded_chars = chars.map do |char|
    decode_char(char)
  end
  decoded_chars.join
end

puts decode_word('-- -.--')

def decode(string)
  words = string.split('   ')
  decoded_words = []
  words.each do |word|
    decoded_words.push(decode_word(word))
  end
  decoded_words.join(' ')
end


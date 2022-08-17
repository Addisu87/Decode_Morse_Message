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


# Create a method to decode a Morse code character
def decode_char(char)
  @Alphabets[char]
end

puts decode_char('.-')

# Create a method to decode an entire word in Morse code
def decode_word(word)
  chars = word.split
  decoded_chars = chars.map do |char|
    decode_char(char)
  end
  decoded_chars.join
end

puts decode_word('-- -.--')

# Create a method to decode the entire message in Morse code
def decode(string)
  words = string.split('   ')
  decoded_words = []
  words.each do |word|
    decoded_words.push(decode_word(word))
  end
  decoded_words.join(' ')
end

puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

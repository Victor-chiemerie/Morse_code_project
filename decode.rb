# Define the Morse code to character dictionary
morse_dict = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2',
  '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6',
  '--...' => '7', '---..' => '8', '----.' => '9'
}

def morse_code_to_text(morse_code, morse_dict)
  words = split_into_words(morse_code)
  decoded_words = words.map { |word| decode_word(word, morse_dict) }
  decoded_words.join(' ')
end

def split_into_words(morse_code)
  morse_code.split('   ') # Words are separated by three spaces
end

def decode_word(word, morse_dict)
  characters = word.split(' ') # Characters within words are separated by one space
  decoded_characters = characters.map { |char| morse_dict[char] }
  decoded_characters.join
end

# Example usage
puts morse_code_to_text('... --- ...   - .... .   .-.. --- -... ---', morse_dict) # This will print "SOS THE LOBO"

# frozen_string_literal: true

def morse_code_to_text(morse_code)
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

  words = morse_code.split('   ') # Words are separated by three spaces
  decoded_message = words.map do |word|
    characters = word.split(' ') # Characters within words are separated by one space
    characters.map { |char| morse_dict[char] }.join('')
  end

  decoded_message.join(' ') # Join words with single space and return the decoded message
end
puts morse_code_to_text('... --- ...')

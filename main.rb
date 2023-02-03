def decode_char(msh_char)
  mors_alph = { a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.', f: '..-.',
                g: '--.', h: '....', i: '..', j: '.---', k: '-.-', l: '.-..',
                m: '--', n: '-.', o: '---', p: '.--.', q: '--.-', r: '.-.',
                s: '...', t: '-', u: '..-', v: '...-', w: '.--', x: '-..-',
                y: '-.--', z: '--..' }
  mors_alph.key(msh_char).upcase
end

def decode_word(msh_word)
  word_chars = msh_word.split
  decoded_word = []
  word_chars.each do |msg_char|
    decoded_word.append(decode_char(msg_char))
  end
  decoded_word.join
end

def decode(msg)
  msg_words = msg.split('   ')
  decoded_msg = []
  msg_words.each do |word|
    decoded_msg.append(decode_word(word))
  end
  puts decoded_msg.join(' ')
end

decode('-- -.--   -. .- -- .')
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

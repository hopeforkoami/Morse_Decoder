def decode_char(mshChar)
  morsAlph = { a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.', f: '..-.',
          g: '--.', h: '....', i: '..', j: '.---', k: '-.-', l: '.-..',
          m: '--', n: '-.', o: '---', p: '.--.', q: '--.-', r: '.-.',
          s: '...', t: '-', u: '..-', v: '...-', w: '.--', x: '-..-',
          y: '-.--', z: '--..'
        }
  return  morsAlph.key(mshChar).upcase
end

def decode_word(mshWord)
  wordChars = mshWord.split()
  decodedWord =[]
  wordChars.each do |msgChar| 
    decodedWord.append(decode_char(msgChar))
  end
  return decodedWord.join()
end

def decode(msg)
  msgWords = msg.split('   ')
  decodedMsg = []
  msgWords.each do |word|
    decodedMsg.append(decode_word(word))
  end
  puts decodedMsg.join(' ')
end

decode("-- -.--   -. .- -- .")
decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
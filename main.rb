def decode_char(mshChar)
  morsAlph = { a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.', f: '..-.',
          g: '--.', h: '....', i: '..', j: '.---', k: '-.-', l: '.-..',
          m: '--', n: '-.', o: '---', p: '.--.', q: '--.-', r: '.-.',
          s: '...', t: '-', u: '..-', v: '...-', w: '.--', x: '-..-',
          y: '-.--', z: '--..'
        }
  puts morsAlph.key(mshChar)

end

decode_char('-.-')
decode_char('---')
decode_char('.-')
decode_char('--')
decode_char('..')
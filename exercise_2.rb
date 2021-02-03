def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  plaintext_chars.join
end


print encode("theswiftfoxjumpedoverthelazydog", "secretkey")

print decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")


# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

#error : nil can't be coerced into Integer (TypeError). This is because in line 3 when char is "z" it can't find the character "z" in cipher because in line 2 the array of the alphabet goes up to "z" but does not include that so first we need to change that for both methods by using 2 dots instead of 3.

#we are getting the expected output for the encode method but not the decode method and this is because on line 12 the subtraction to choose the index of cipher is the wrong way round.

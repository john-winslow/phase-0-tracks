#Encrypt method

#define encrypt_input variable:
encrypt_input = ""

#encrypts a password by moving each character to the next letter in the alphabet
def encrypt(encrypt_input)
#to avoid edge cases (z ==> aa), print only the last character
	puts encrypt_input[0].next[-1] + encrypt_input[1].next[-1] + encrypt_input[2].next[-1]
end

#Decrypt method
#NOTE: This feels clunky.  For some odd reason, I'm unable to define variable alphabet = "abcdefghijklmnopqrstuvwxyz",
#so I have typed it out in each instance.  It is difficult to read, but it took me several hours of tinkering to figure it out!

#define decrypt_input variable:
decrypt_input = ""

#decrypts a password by moving each character to the preceeding letter in the alphabet
def decrypt(decrypt_input)
#compare index of decrpyt_input to index of alphabet, subtract 1, and print corresponding letter in alphabet string.  Make sure to convert to string, so results can be combined.
	puts "abcdefghijklmnopqrstuvwxyz"["abcdefghijklmnopqrstuvwxyz".index(decrypt_input[0]) - 1].to_s + "abcdefghijklmnopqrstuvwxyz"["abcdefghijklmnopqrstuvwxyz".index(decrypt_input[1]) - 1].to_s + "abcdefghijklmnopqrstuvwxyz"["abcdefghijklmnopqrstuvwxyz".index(decrypt_input[2]) - 1].to_s
end

#test results

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
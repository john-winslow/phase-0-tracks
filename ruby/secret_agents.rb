# APPROACH #1: 

# ISSUE: Can acheive desired outcomes for release 4.3, 
# but cannot take more or less than 3 characters for input.
# this means the "swordfish" call is doomed to fail!

# Encrypt method

# define encrypt_input variable:
encrypt_input = ""

# encrypt a password by moving each character to the next letter in the alphabet
def encrypt(encrypt_input)
# to avoid edge cases (z ==> aa), print only the last character
	puts encrypt_input[0].next[-1] + encrypt_input[1].next[-1] + encrypt_input[2].next[-1] 
end

# Decrypt method #1

# define decrypt_input variable:
decrypt_input = ""

# decrypts a password by moving each character to the preceeding letter in the alphabet
def decrypt(decrypt_input)
# define alphabet as a string to compare index with decrypt_input
	alpha = "abcdefghijklmnopqrstuvwxyz"
# compare index of decrypt_input to index of alphabet, 
# subtract 1, and print corresponding letter in alphabet string
	puts alpha[alpha.index(decrypt_input[0]) - 1] + alpha[alpha.index(decrypt_input[1]) - 1] + alpha[alpha.index(decrypt_input[2]) - 1]
end

# test results

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")


#======================================================================================

# APPROACH #2:  

# ISSUE:  This approach allows for inputs of varying length,
# but I cannot figure out how to combine the printed returns
# onto one line (see results).  There is also a nil when encrypting
# the letter z (edge case)
# 

# Encrypt method

# define encrypt_input variable
encrypt_input = ""

# encrypts a password by moving each character to the next letter in the alphabet
def encrypt(encrypt_input)
# define alphabet as a string to compare index with decrypt_input
	alph = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	while index < encrypt_input.length
  		p alph[alph.index(encrypt_input[index]) + 1]
  		index += 1
	end
end

decrypt_input = ""

# decrypts a password by moving each character to the preceeding letter in the alphabet
def decrypt(decrypt_input)
	alph = "abcdefghijklmnopqrstuvwxyz"
	index = 0
# compare index of decrypt_input to index of alphabet, subtract 1, and print corresponding letter in alphabet string.
	while index < decrypt_input.length
  		p alph[alph.index(decrypt_input[index]) - 1]
  		index += 1
	end
end

# Outputs are all separate strings on separatel ines.  Not ideal.

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")

# decrypt(encrypt("swordfish")) outputs "txpsegjti", 
# which is "swordfish" encrypted.  The first method called (decrypt) 
# is being overridden by the last/most recent method (encrypt)

#======================================================================================

# RELEASE 5, DRIVER CODE:

# Ask user whether they would like to encrypt, or decrypt a password.
puts "Would you like to encrpyt, or decrypt a password?"
preference = gets.chomp

# Ask user for password
puts "What is the password?"
password = gets.chomp

if preference == "decrypt".downcase 
	puts decrypt(password)
elsif preference == "encrypt".downcase
	puts encrypt(password)
end

# Not an ideal output, as each character is a separate sting on its own line.
# It is not very readable.












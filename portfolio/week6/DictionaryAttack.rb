<<<<<<< HEAD
#!/usr/bin/ruby 
# DictionaryAttack.rb - ruby version of Dictionary DictionaryAttack
# Author Bimbo Bakare
# Date 19Feb 2022

      
require 'digest' 
      
#read the password hash 
      
passwordHash = "5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5" 
      
#open the wordlist and repeat for each word 
      
IO.foreach("wordlist.txt") do | word | 
      
    word.chomp! 
      
    #hash the word 
      
    wordlistHash = Digest::SHA256.hexdigest(word) 
      
    puts("Trying password #{word}: #{wordlistHash}") 
      
    #if the hash is the same as the correct password's hash then we have cracked the password! 
      
    if(wordlistHash == passwordHash) 
      
        puts("Password has been cracked! It was #{word}") 
      
        return 
      
    end 
      
end 
=======
#!/usr/bin/ruby 
# DictionaryAttack.rb - ruby version of Dictionary DictionaryAttack
# Author Bimbo Bakare
# Date 19Feb 2022

      
require 'digest' 
      
#read the password hash 
      
passwordHash = "5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5" 
      
#open the wordlist and repeat for each word 
      
IO.foreach("wordlist.txt") do | word | 
      
    word.chomp! 
      
    #hash the word 
      
    wordlistHash = Digest::SHA256.hexdigest(word) 
      
    puts("Trying password #{word}: #{wordlistHash}") 
      
    #if the hash is the same as the correct password's hash then we have cracked the password! 
      
    if(wordlistHash == passwordHash) 
      
        puts("Password has been cracked! It was #{word}") 
      
        return 
      
    end 
      
end 
>>>>>>> e5fa5d5b524d233f2c5acaaff70733c9214ee2aa
     
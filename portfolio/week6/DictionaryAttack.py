<<<<<<< HEAD
#!/usr/bin/python3 
# DictionaryAttack.py - python script for dictionary DictionaryAttack
# Author Bimbo Bakare
# Date 19Feb2022


import hashlib 
      
#hidden password hash 
      
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824" 
      
#open the wordlist 
      
with open("wordlist.txt", "r") as wordlist: 
      
        #repeat for each word

        for word in wordlist.readlines():
      
            word = word.rstrip()

            #hash the word
      
            wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
      
            print(f"Trying password {word}:{wordlistHash}")
      
            #if the hash is the same as the correct password's hash then we have cracked the password!
      
            if(wordlistHash == passwordHash):
      
                print(f"Password has been cracked! It was {word}")
      
                break


# References: McKnight, R 2022 
=======
#!/usr/bin/python3 
# DictionaryAttack.py - python script for dictionary DictionaryAttack
# Author Bimbo Bakare
# Date 19Feb2022


import hashlib 
      
#hidden password hash 
      
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824" 
      
#open the wordlist 
      
with open("wordlist.txt", "r") as wordlist: 
      
        #repeat for each word

        for word in wordlist.readlines():
      
            word = word.rstrip()

            #hash the word
      
            wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
      
            print(f"Trying password {word}:{wordlistHash}")
      
            #if the hash is the same as the correct password's hash then we have cracked the password!
      
            if(wordlistHash == passwordHash):
      
                print(f"Password has been cracked! It was {word}")
      
                break


# References: McKnight, R 2022 
>>>>>>> e5fa5d5b524d233f2c5acaaff70733c9214ee2aa
     
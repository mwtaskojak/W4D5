# Phase I:
# Write a method #first_anagram? that will generate and store all the possible anagrams 
# of the first string. Check if the second string is one of these.

    def first_anagram?(str1,str2)
        chars = str1.split("")
        arr= chars.permutation.to_a
        arr.include?(str1.str2(""))
    end 


# Phase II:
# Write a method #second_anagram? that iterates over the first string.
#  For each letter in the first string, 
#  find the index of that letter in the second string (hint: use Array#find_index)
#   and delete at that index. The two strings are anagrams if an index is found for every letter 
#   and the second string is empty at the end of the iteration.

# Try varying the length of the input strings. What are the differences between 
# #first_anagram? and #second_anagram??

def second_anagram?(str1,str2)   #n
    words = str1.split("")
    word2 = str2.split("")
    words.each_with_index do |char,i|
        new_idx = word2.find_index(char)
        if new_idx != nil 
            word2.delete(word2[new_idx])
        end
    end
    word2.empty?
end


# Phase III:
# Write a method #third_anagram? that solves the problem by sorting both strings alphabetically. 
# The strings are then anagrams if and only if the sorted versions are the identical.

# What is the time complexity of this solution? Is it better or worse than #second_anagram??

def third_anagram?(str1,str2)
    word1=str1.split("")
    word2=str2.split("")
    word1.sort == word2.sort
end 

# Phase IV:
# Write one more method #fourth_anagram?. 
# This time, use two Hashes to store the number of times each letter appears in both words.
#  Compare the resulting hashes.

# What is the time complexity?

# Bonus: Do it with only one hash.

def fourth_anagram?(str1,str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    word1=str1.split("")
    word2=str2.split("")
    word1.each do |char|
        hash1[char] +=1
    end
    word2.each do |char|
        hash2[char] +=1
    end
    hash1.each do |k,v|
        return false if !hash2.has_key?(k) || !hash2.has_value?(v)  
    end
    true
end



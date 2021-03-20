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





# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    def sm_min(arr)
        min = arr.first
        arr.each do |ele|    # O(N)
            if ele < min 
                min = ele
            end 
        end 
        min
    end

    # Phase I
    # First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.
    # What is the time complexity for this function?

    def my_min(arr)     #O(n2)
        min = arr.first
        arr.each_with_index do |el_1 , i|
            (i+1...arr.length).each do |el_2|
                if arr[el_2] < el_1 && arr[el_1] < min 
                    min = arr[el_2]
                end 
            end 
        end 
        min 
    end 

    # Phase II
    # Now rewrite the function to iterate through the list just once while keeping track of the minimum.
    # What is the time complexity?

    def my_min_2(arr)    #O(N)
        min_num = arr.first
      
       arr.each { |num| min_num = num if num < min_num }
      
        min_num
    end
    



    
    # Phase I
    # Write a function that iterates through the array and finds all sub-arrays using nested loops. 
    # First make an array to hold all sub-arrays. Then find the sums of each sub-array and return the max.

    #ist = [5, 3, -7]
    # largest_contiguous_subsum(list) # => 8

    # possible sub-sums
#    [5]           # => 5
#     [5, 3]        # => 8 --> we want this one
#     [5, 3, -7]    # => 1
#     [3]           # => 3
#     [3, -7]       # => -4
#     [-7]          # => -7
    
        require 'byebug'
      
        def largest_contiguous_subsum(arr)    #O(n^3)
            # debugger
            subs = []

            arr.each_index do |idx1|
                 (idx1..array.length - 1).each do |idx2|
                     subs << array[idx1..idx2]
                 end
             end

                subs.map { |sub| sub.inject(:+) }.max  # n the ruby inject method, when no block is passed in, 
                # it looks if the first argument is a symbol (i.e. :+) for the method to use. 
                # In this case it will recognize :+ as a symbol and know it needs to sum the entire list.
            
        end 

        # Phase II
        # Let's make a better version. Write a new function using O(n) time with O(1) memory. 
        # Keep a running tally of the largest sum.
        #  To accomplish this efficient space complexity, consider using two variables.
        #   One variable should track the largest sum so far and another to track the current sum.
        #    We'll leave the rest to you.

        def better_subsum(arr)
            largest = 0 
            sum = 0 
            i = 0 
            j = 0

            while i != arr.length-1
                largest += arr[j]
                sum = largest if largest > sum 
                if j == arr.length-1 
                    i+=1 
                    j = i 
                    largest = 0 
                else
                    j+=1
                end 
            end 
            sum 
        end 
      

       

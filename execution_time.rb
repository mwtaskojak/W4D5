list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
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
    end 

    
      

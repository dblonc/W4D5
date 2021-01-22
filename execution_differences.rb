def my_min(list) #O(n^2)

    list.each_with_index  do |el1, i1|
        return el1 if list.all? {|el2| el2>=el1}
    end

end

def my_min_pro(list) #O(n)

    list.inject do |acc, ele| 

        if acc < ele
            acc
        else
            ele
        end

    end

end

def largest_contiguous_subsum(list)

    

end
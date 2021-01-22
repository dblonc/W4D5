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

def largest_contiguous_subsum(list)  # O(n^2)
    sum = 0
    list.each_with_index do |el1, i1|
        list.each_with_index do |el2, i2|
            if i2 >= i1
                sub = list[i1..i2].sum
                sum = sub if sub > sum
            end
        end
        
    end
    sum
end

p largest_contiguous_subsum([1,2,3,4,5])


def largest_contiguous_subsum_pro(list)
    curr_sum = 0
    largest = 0
    (0...list.length).each do |i|  # [2, 3, -6, 7, -6, 7]
        left = curr_sum - list[0]
        curr = list[i]
        curr_sum = curr_sum + list[i]

        largest = left if left > largest
        largest = curr if curr > largest
        largest = curr_sum if curr_sum > largest

        #sub = list[i] + list[i+1]
        #sum = sub if sub > sum
    end
    largest
end

p largest_contiguous_subsum_pro([2, 3, -6, 7, -6, 7])

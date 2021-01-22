def first_anagram?(str1, str2)
    anagrams = []
    str1.chars.permutation {|p| anagrams << p.join}
    anagrams.include?(str2)
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
    str1.chars.each_with_index do |char, i|
        str2.delete(char) if str2.chars.find_index(char) == i 
        # stopped about to fix ^^ this line to delete at the index we 
        # find in the conditional instead of at the char      
    end
    str2.empty?
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true
def first_anagram?(str1, str2)
    anagrams = []
    str1.chars.permutation {|p| anagrams << p.join}
    anagrams.include?(str2)
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
    str1.chars.each_with_index do |char, i|
        str2.find_index(char) == i

    end

end
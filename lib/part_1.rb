def select_even_nums(arr)
    arr.select(&:even?) 
end

def reject_puppies(dogs)
    dogs.reject { |dog| dog["age"] <= 2 }
end

def count_positive_subarrays(arr)
    arr.count { |subArr| subArr.sum > 0 }
end

def aba_translate(str)
    new_str = ""
    vowels = "aeiou"
    str.each_char do |char|
        if vowels.include?(char)
            new_str += char + "b" + char
        else
            new_str += char
        end
    end
    new_str
end

def aba_array(arr)
    arr.map { |word| aba_translate(word) }
end
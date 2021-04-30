def all_words_capitalized?(arr)
    arr.all? { |word| word.capitalize == word }
end

def no_valid_url?(arr)
    valid = ['.com', '.net', '.io', '.org']
    arr.none? do |url|
        valid.any? { |ending| url.end_with?(ending) }
    end
end

def any_passing_students?(arr)
    arr.any? do |student|
        grades = student[:grades]
        avg = grades.sum / (grades.length * 1.0)
        avg >= 75
    end
end
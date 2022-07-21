dictionary = ['dog', 'man', 'toad', 'gone', 'and']

def substrings (string, dictionary)
    lower_string = string.downcase
    words = {}
    dictionary.each do |x|
        words[x] = 0
        checker = lower_string.dup
        while checker.include? x
            words[x] += 1
            checker.slice!(x).replace('')
        end
    end
    words.each do |key, value|
        if value == 0
            words.delete(key)
        end
    end
    return words
end

puts substrings("Doggomancer will have its day, even if DOGS are about!  It's mandatory!", dictionary)
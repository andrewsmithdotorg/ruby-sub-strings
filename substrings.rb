dictionary = ['dog', 'man', 'toad', 'gone']

def substrings (string, dictionary)
    string.downcase!
    words = {}
    dictionary.each do |x|
        words[x] = 0
        while string.include? x
            words[x] += 1
            string.slice!(x).replace('')
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
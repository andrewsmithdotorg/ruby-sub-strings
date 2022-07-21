dictionary = ['dog', 'man', 'toad', 'gone']

def substrings (string, dictionary)
    string.downcase!
    words = {}
    dictionary.each do |x|
        words[x] = 0
        if string.include? x
            words[x] += 1
        end
    end
    words.each do |key, value|
        if value == 0
            words.delete(key)
        end
    end
    return words
end

puts substrings("Doggomancer", dictionary)
def encrypt(word, num)
    word_list = []
    word.chars.each do |letter|
        if letter.ord.between?(65, 90)
            result = (letter.ord - 65 + num) % 26 + 65
            word_list << result.chr
        elsif letter.ord.between?(97, 122)
            result = (letter.ord - 97 + num) % 26 + 97
            word_list << result.chr
        else
            word_list << letter
        end
    end
    return word_list.join('')
end

print encrypt("Hello, World!", 5)

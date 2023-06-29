def caesar_cipher(text, shift_factor )
    caesar_text = ""
    text.each_char.with_index do | char, i |
        if ("a".."z").include?(char) || ("A".."Z").include?(char)
            shift_factor.times {char = char.next}
        end
        caesar_text << char
    end

    return caesar_text
end

puts caesar_cipher("Hello", 2)
def caesar_cipher(str, key)
    output = ""
    #loop through each character in the string
    str.split('').each{ |s|
        #if uppercase/lowercase, shift each char using the key
        #if its not, an alphabet, leave it as it is.
        if(/[[:upper:]]/.match(s))
            a += ((((s.ord + key) - 65) % 26) + 65).chr
        elsif(/[[:lower:]]/.match(s))
            a += ((((s.ord + key) - 97) % 26) + 97).chr
        else
            a += s
        end
    }
    return output
end
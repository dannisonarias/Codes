p 'Enter values for S'
s = gets.chomp

def chunk(string, size)
    string.scan(/(.{#{size}})/) # split string by using scan
end

def same_letters?(sarr)
    p 0 if sarr[0] - sarr[1] == []
end

def odd?(s)
    p -1 if (s.length % 2 != 0) # check if string is an even number in length
end

def string_length(s)
    s.length / 2
end

def anagram(s)
    odd?(s)
    lens = string_length(s)
    sarr = chunk(s,lens)
    same_letters?(sarr)
end

anagram(s)
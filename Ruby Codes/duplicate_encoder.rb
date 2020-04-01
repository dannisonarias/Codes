#https://www.codewars.com/kata/duplicate-encoder

def duplicate_encode(word)
    word = word.downcase.split("")
    word.map do |i|
      word.count(i) > 1 ? ")" : "("
    end
  end
  
  duplicate_encode('fdzd')
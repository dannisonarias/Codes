
def isBalanced(s)
  
    return 'NO' if s.length.odd?
    return 'NO' if s =~ /[^\[\]\(\)\{\}]/
     pairs = { '{' => '}', '[' => ']', '(' => ')' }
     stack = []
     s.chars do |bracket|
       if pairs[bracket]
         stack << pairs[bracket]
       else
         return 'NO' unless stack.pop == bracket
       end
     end
     return 'YES' if stack.empty?
     return 'NO'
   end
   isBalanced("[()][{}[{}[{}]]][]{}[]{}[]{{}({}(){({{}{}[([[]][[]])()]})({}")

   
   
   
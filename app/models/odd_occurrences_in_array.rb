module Recursive
    class OddOccurenciesInArray
        def solution(a)
            # write your code in Ruby 2.2
              u = a.delete_at(0)
              if (a.delete u).nil?
                return u
              end
              
              solution(a)
        end
    end
end
  
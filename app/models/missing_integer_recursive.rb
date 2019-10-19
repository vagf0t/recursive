module Recursive
  class MissingIntegerRecursive
    def solution(a, index = 1)
      if a.include?(index)
        solution(a, index + 1)
      else
        index
      end
    end
  end
end

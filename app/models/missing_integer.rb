module Recursive
  class MissingInteger
    def solution(a)
      max = 1
      a.each_with_index do |_num, i|
        if a.include? i+1
          max = i+2
          next
        else
          max = i+1
          break
        end
      end
      max
    end
  end
end

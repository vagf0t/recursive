module Recursive
  class BinaryGap
    def solution(n, long_gap=0, short_gap=0, one=false)
      return long_gap if n.zero?
      if n.even? && one
        long_gap=solution(n / 2, long_gap, short_gap+1, one)
      elsif n.odd?
        long_gap=solution(n / 2, [long_gap, short_gap].max, 0, true)
      else
        long_gap=solution(n / 2, long_gap, short_gap, one)
      end
      long_gap
    end
  end
end

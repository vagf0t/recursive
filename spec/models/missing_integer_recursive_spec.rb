require 'spec_helper'

describe Recursive::MissingIntegerRecursive do
  context 'given an array with a gap' do
    it 'should find the missing one' do
      expect(subject.solution([1, 2, 5])).to eq 3
    end
  end

  context 'given an array with no gap' do
    it 'should find the next one' do
      expect(subject.solution([1, 2, 3])).to eq 4
    end
  end

  context 'given an array with only negative values' do
    it 'should return 1' do
      expect(subject.solution([-1, -2, -3])).to eq 1
    end
  end

  context 'given an array with only one element' do
    it 'should return the proper one' do
      expect(subject.solution([3])).to eq 1
    end
  end

  context 'given an array with only one elementof value 1' do
    it 'should return the proper one' do
      expect(subject.solution([1])).to eq 2
    end
  end

  context 'given an array of 100000 integers including maximum and minimum values' do
    it 'should return the proper one' do
      a = Array.new(100000) { rand(-1000000...1000000) }
      expect(subject.solution(a) > 0).to be true
    end
  end
end
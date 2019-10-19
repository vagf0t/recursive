require 'spec_helper'

describe Recursive::OddOccurenciesInArray do
  context 'given [9, 3, 9, 3, 9, 7, 9]' do
    it 'should return 7' do
      expect(subject.solution([9, 3, 9, 3, 9, 7, 9])).to eq 7
    end
  end
end
require 'spec_helper'

describe Recursive::ArrayFlattener do

  context 'given a nested array' do
    it 'should flatten it' do
      expect(subject.flatten([1, 2, [3, 4], 5, [6, [7, [8]]]])).to eq [1,2,5,3,4,6,7,8]
    end
  end

  context 'given an empty array' do
    it 'should return empty array' do
      expect(subject.flatten([])).to eq []
    end
  end

  context 'given nil' do
    it 'should return empty array' do
      expect(subject.flatten).to eq []
    end
  end

  context 'given a non array input' do
    it 'should return empty array' do
      expect(subject.flatten(Object.new)).to eq []
    end
  end

  context 'given a nested array with non array nested elements' do
    it 'should flatten it' do
      o = Object.new
      expect(subject.flatten([1, 2, [3, o], 5, [6, [7, [o]]]])).to eq [1,2,5,3,o,6,7,o]
    end
  end
end
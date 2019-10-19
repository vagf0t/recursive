require 'spec_helper'

describe Recursive::BinaryGap do
  context 'given integer 1041' do
    it 'should give 5' do
      expect(subject.solution(1041)).to eq 5
    end
  end

  context 'given integer 15' do
    it 'should give 0' do
      expect(subject.solution(15)).to eq 0
    end
  end

  context 'given integer 32' do
    it 'should give 0' do
      expect(subject.solution(32)).to eq 0
    end
  end

  context 'given integer 5' do
    it 'should give 1' do
      expect(subject.solution(5)).to eq 1
    end
  end

  context 'given integer 2147483647' do
    it 'should give 0' do
      expect(subject.solution(2147483647)).to eq 0
    end
  end

  context 'given integer 328' do
    it 'should give 2' do
      expect(subject.solution(328)).to eq 2
    end
  end

  context 'given integer 11' do
    it 'should give 1' do
      expect(subject.solution(11)).to eq 1
    end
  end

  context 'given integer 9' do
    it 'should give 2' do
      expect(subject.solution(9)).to eq 2
    end
  end

  context 'given integer 6291457' do
    it 'should give 2' do
      expect(subject.solution(6291457)).to eq 20
    end
  end
end
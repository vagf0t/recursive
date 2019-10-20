require 'spec_helper'

describe Recursive::Schedule do
  context 'given "Mon 08:00-10:00\nSat 09:00-:16:00\nMon 12:00-14:00\nTue 18:00-21:00\nWed 23:00-23:50\nThu 14:00-17:00\nFri 00:00-02:00\nSun 10:00-13:00"' do
    it 'should return 1860' do
      expect(subject.solution("Mon 08:00-10:00\nSat 09:00-:16:00\nMon 12:00-14:00\nTue 18:00-21:00\nWed 23:00-23:50\nThu 14:00-17:00\nFri 00:00-02:00\nSun 10:00-13:00")).to eq 1860
    end
  end
end
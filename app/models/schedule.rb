require 'time'
module Recursive
  class Schedule
    def solution(s)
      meetings = s.split(/\n+/)
      meetings = ordered_by_time(meetings)
      start = meetings[0][:start].to_i
      sleeping_frame(meetings, start, 0)
    end

    def ordered_by_time(meetings)
      ordered = []
      meetings.each do |m|
        case m.split(' ')[0]
          when 'Mon' then
              ordered << {start: Time.parse(m.split(' ')[1].split('-')[0], Time.now).to_i, 
                          end: Time.parse(m.split(' ')[1].split('-')[1], Time.now).to_i}
          when 'Tue' then
              ordered << {start: Time.parse(m.split(' ')[1].split('-')[0], Time.now).to_i+ (60 * 60 * 24), 
                          end: Time.parse(m.split(' ')[1].split('-')[1], Time.now).to_i+ (60 * 60 * 24)}
          when 'Wed' then
              ordered << {start: Time.parse(m.split(' ')[1].split('-')[0], Time.now).to_i+ (60 * 60 * 24*2), 
                          end: Time.parse(m.split(' ')[1].split('-')[1], Time.now).to_i+ (60 * 60 * 24*2)}
          when 'Thu' then
              ordered << {start: Time.parse(m.split(' ')[1].split('-')[0], Time.now).to_i+ (60 * 60 * 24*3), 
                          end: Time.parse(m.split(' ')[1].split('-')[1], Time.now).to_i+ (60 * 60 * 24*3)}
          when 'Fri' then
              ordered << {start: Time.parse(m.split(' ')[1].split('-')[0], Time.now).to_i+ (60 * 60 * 24*4), 
                          end: Time.parse(m.split(' ')[1].split('-')[1], Time.now).to_i+ (60 * 60 * 24*4)}
          when 'Sat' then
              ordered <<  {start: Time.parse(m.split(' ')[1].split('-')[0], Time.now).to_i+ (60 * 60 * 24*5), 
                          end: Time.parse(m.split(' ')[1].split('-')[1], Time.now).to_i+ (60 * 60 * 24*5)}
          else  ordered << {start: Time.parse(m.split(' ')[1].split('-')[0], Time.now).to_i+ (60 * 60 * 24*6), 
                              end: Time.parse(m.split(' ')[1].split('-')[1], Time.now).to_i+ (60 * 60 * 24*6)}
        end
      end
      ordered = ordered.sort_by { |obj| obj[:start] }
    end

    def sleeping_frame(meetings, start, max)
      if meetings.empty?
        return max/60
      end
      frame = meetings[0][:start].to_i - start
      start = meetings[0][:end].to_i
      max = [frame, max].max
      unless meetings.shift.empty?
        sleeping_frame(meetings, start, max)
      end
    end
  end
end

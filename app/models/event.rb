class Event < ActiveRecord::Base
    validate :event_cannot_be_in_the_past
    validate :start_before_end

    def event_cannot_be_in_the_past
        hour = Time.now.strftime('%k').to_i
        min = Time.now.strftime('%M').to_i
        if startDay < Date.today
            errors.add(:Event, "can not be in the past")
        elsif startDay == Date.today
            if startTime.strftime('%k').to_i < hour
                    errors.add(:Event, "can not be in the past")
            elsif startTime.strftime('%k').to_i == hour
                if startTime.strftime('%M').to_i < min
                    errors.add(:Event, "can not be in the past")
                end
            end
        end
    end

    def start_before_end
        if endDay < startDay
            errors.add(:Event, "end can not be before start")
        elsif endDay == startDay
            if endTime.strftime('%k').to_i < startTime.strftime('%k').to_i
                errors.add(:Event, "end can not be before start")
            elsif endTime.strftime('%k').to_i == startTime.strftime('%k').to_i
                if endTime.strftime('%M').to_i < startTime.strftime('%M').to_i
                    errors.add(:Event, "end can not be before start")
                end
            end
        end
    end
end

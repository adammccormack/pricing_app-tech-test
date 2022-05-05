# frozen_string_literal: true

require 'byebug'

class GetPrice
  WEEK = 10_080
  DAY = 1440
  HOUR = 60
  MINUTE = 1
  # default initialiser attributes, also optional to changing and setting attributes
  def initialize(week_price: 105, day_price: 60, hour_price: 22, minute_price: 2, day_min: 2, hour_min: 3, minute_min: 11)
    @week_price = week_price
    @day_price = day_price
    @hour_price = hour_price
    @minute_price = minute_price
    @day_min = day_min
    @hour_min = hour_min
    @minute_min = minute_min
  end
  # runs the app and tallies minutes as weeks, days etc.
  def call(total_minutes)
    weeks = 0
    days = 0
    hours = 0
    minutes = 0
    # breakdowns total minutes in order of week, days, hours, minutes.
    while total_minutes.positive?

      if total_minutes >= WEEK
        total_minutes -= WEEK
        weeks += 1
      elsif total_minutes >= DAY
        if (total_minutes / DAY) >= day_min
          total_minutes -= WEEK
          weeks += 1
        else
          total_minutes -= DAY
          days += 1
        end
      elsif total_minutes >= HOUR
        if (total_minutes / HOUR) >= hour_min
          total_minutes -= DAY
          days += 1
        else
          total_minutes -= HOUR
          hours += 1
        end
      elsif total_minutes >= MINUTE
        if (total_minutes / MINUTE) >= minute_min
          total_minutes -= HOUR
          hours += 1
        else
          total_minutes -= MINUTE
          minutes += 1
        end
      end
    end
    # totals each tally against its price
    week_total = weeks * week_price
    day_total = days * day_price
    hour_total = hours * hour_price
    minute_total = minutes * minute_price
    # returns final price for the duration of the booking
    week_total + day_total + hour_total + minute_total
  end

  private

  attr_reader :week_price, :day_price, :hour_price, :minute_price, :day_min, :hour_min, :minute_min
end

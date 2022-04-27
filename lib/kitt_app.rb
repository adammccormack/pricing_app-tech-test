
class KittApp
  attr_accessor :week_price, :day_price

  # def initialize
  #   @week_price = 0
  #   @day_price = 0
  # end

  def get_price(minutes)

    # week price
    if minutes >= 10080
      weeks = minutes / 10080.to_f
      days_remaining = weeks.modulo(1)
      weeks_remaining = weeks - days_remaining
      @week_price = weeks_remaining*105
    end
    
    if days_remaining < 1
      convert_days = days_remaining*7
      if convert_days >= 2 && convert_days <= 5
        @day_price = 105
      elsif
        @day_price = convert_days*60
      else
        @day_price = 0
      end
    end
    final_price = @week_price + @day_price
  end
end

  # 3 days = 4320 minutes

# (1 week) + (2 days) = 12960 minutes = £210



  # use cheapest rate for duration
  # if duration is 3 hours (£66), then choose rate of £60 instead.

  # so if the number of days and hours meets and exceeds the cost of £105
  # then just make the cost £105

  # price per (1 min)minute: £2
  # price per (60 minutes)hour: £22
  # price per (1440 minutes)day: £60
  # price per (10080 minutes)week: £105

  # assuming 1 week is 5 business days

  # 1440 minutes = £60
  # 2880 minutes = £105
  # 20160 minutes = £210





      # day price
    # if minutes < 10080 && minutes >= 1440
    #   days = minutes / 1440.to_f
    #   if days >= 1.75 && days <= 5
    #     day_price = 105
    #   else
    #     day_price = days*60
    #   end
    #     final_price = day_price
    # end
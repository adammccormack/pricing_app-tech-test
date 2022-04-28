
class KittApp


  def initialize(week_remainder=nil, week_price=nil, day_price=nil)
    @week_remainder = week_remainder
    @week_price = week_price
    @day_price = day_price
  end

     # minutes >= 10080
     def week_price(minutes)
      if minutes >= 10080
        weeks = minutes / 10080.to_f
        week_remainder = weeks.modulo(1)
        @week_remainder = week_remainder

        weeks_remaining = weeks - week_remainder
        @week_price = weeks_remaining*105
        @week_price
      end
    end

    def week_remainder
      @week_remainder
    end
  
    def day_price
      p day_remainder = @week_remainder*7
      p minutes = day_remainder*1440
      p minutes = minutes.to_f.ceil
  
      if minutes < 10080 && minutes >= 1440
        days = minutes / 1440.to_f
          if days >= 1.75 && days <= 7
            day_price = 105
          else
            day_price = days*60
          end
            @day_price = day_price
      else
      end
      @day_price
    end
  
  
    def hour_price(minutes)
      if minutes < 1440 && minutes >= 60
        hours = minutes / 60
        if hours >= 3 && hours < 24
          hour_price = 60.to_f
        else
          hour_price = hours*22
        end
          final_price = hour_price
      end
    end
  
    def minute_price(minutes)
      if minutes < 60 && minutes >= 0
        if minutes >= 11 && minutes < 60
          minutes_price = 22.to_f
        else
          minutes_price = minutes*2
        end
          final_price = minutes_price
      end
    end

    def get_price

      @get_price = @week_price + @day_price
    end

  end

    # week_remainder = 0.143
    # convert to day_remainder = week_remainder*7
    # convert to minutes = day_remainder*1440

  
   # 3 weeks and 1 days = 31_680 minutes
    # should cost 315+60 = 375
    # currently gives 315

   # def run_app
    #     puts 'Hi there, you can calculate your costs by entering the methods and passing
    #     arguments to them each: '
    #     puts "To quit just enter 'quit' : )"
    #     input = gets.chomp
    #     if input == 'quit'
    #     end
    # end

  # def get_price(minutes)

  #   if minutes >= 10080
  #     weeks = minutes / 10080.to_f
  #     @week_remainder = weeks.modulo(1)
      
  #     weeks_remaining = weeks - @week_remainder
  #     @week_price = weeks_remaining*105
  #     @week_price


  #     @days_remaining = @week_remainder*7
  #     @days_remaining = @days_remaining.to_i
  #     if @days_remaining >= 2 && @days_remaining <= 5
  #       @day_price = 105
  #     else
  #       @day_price = @days_remaining*60
  #     end
  #   @final_price = @day_price + @week_price

  #     elsif minutes < 10080 && minutes >= 1440
  #       days = minutes / 1440.to_f
  #         if days >= 1.75 && days <= 7
  #           day_price = 105
  #         else
  #           day_price = days*60
  #         end
  #           final_price = day_price
      


  #   elsif minutes < 1440 && minutes >= 60
  #     hours = minutes / 60
  #       if hours >= 3 && hours < 24
  #         hour_price = 60.to_f
  #       else
  #         hour_price = hours*22
  #       end
  #         final_price = hour_price



  #   elsif minutes < 60 && minutes >= 0
  #           if minutes >= 11 && minutes < 60
  #             minutes_price = 22.to_f
  #           else
  #             minutes_price = minutes*2
  #           end
  #             final_price = minutes_price


  #     else
  #   end
  # end


# 3 days = 4320 minutes

# (1 week) + (2 days) = 12960 minutes = £210

# use cheapest rate for duration
# if duration is 3 hours (£66), then choose rate of £60 instead.

# so if the number of days and hours meets and exceeds the cost of £105
# then just make the cost £105

# price per (1 min)minute: £2
#  price per (60 minutes)hour: £22
# price per (1440 minutes)day: £60
# price per (10080 minutes)week: £105

# assuming 1 week is 5 business days

# 1440 minutes = £60
# 2880 minutes = £105
# 20160 minutes = £210

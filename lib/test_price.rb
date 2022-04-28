class Test



   # minutes >= 10080
  def week_price(minutes)
    if minutes >= 10080
      weeks = minutes / 10080.to_f
      @week_remainder = weeks.modulo(1)
      
      weeks_remaining = weeks - @week_remainder
      @week_price = weeks_remaining*105
      @week_price

    end
  end

    test = KittApp.new
  p test.week_price(31680)
  p 'f'

 # 3 weeks and 1 days = 31_680 minutes
  # should cost 315+60 = 375
  # currently gives 315

  def day_price(minutes)
    if minutes < 10080 && minutes >= 1440
      days = minutes / 1440.to_f
        if days >= 1.75 && days <= 7
          day_price = 105
        else
          day_price = days*60
        end
          final_price = day_price
    end
  end

  p test.day_price(2880)


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

  p test.hour_price(180)
  p test.hour_price(120)
  p test.hour_price(60)

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

  p test.minute_price(11)
  p test.minute_price(5)


@days_remainder = @week_remainder*7
@minutes_remainder = @days_remainder*1440

@day_price = KittApp.day_price(@minutes_remainder)
final_price = @week_price + @day_price

end




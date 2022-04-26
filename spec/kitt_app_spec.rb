require 'kitt_app'

describe KittApp do
  let(:kitt_app) { KittApp.new }
  
    it { is_expected.to respond_to(:get_price).with(1).argument }

end


# price list

# Price per minute: £2 
# Price per hour: £22 
# Price per day: £60 
# Price per week: £105


# Inputs

# duration of booking in minutes





# Outputs

# cheapest price against The pricing function should use the cheapest rate for given duration.
# For example if the duration is 3 hours it should use the daily price of £60 as this is cheaper than using the price per hour (£66).



# edge cases

# What happens if duration is blank
# What happens if duration is in secs/hours/days/weeks?
require 'kitt_app'

describe KittApp do
  let(:kitt_app) { KittApp.new }
  
    it { is_expected.to respond_to(:get_price).with(1).argument }

    # when I pass an argument of 1 to get_price(), I will expect an output of 2. 

    describe '#get_price' do

      it 'calculates the cheapest rate when given a duration in minutes' do
        kitt_app

        expect(kitt_app.get_price(1440)).to eq(60)
        expect(kitt_app.get_price(2880)).to eq(105)
        expect(kitt_app.get_price(20160)).to eq(210)
      end

    end

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
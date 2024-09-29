require 'cafeinate'

Given('Maria orders a ${int} of coffee from li') do |int|
    @Maria = Customer.new
    @li = Associate.new
    @price = int
    @card_minimum = 2
    @Maria.order
    end
    
    When('Maria pays with a credit card') do
      @Maria.pays_with_credit_card
    end
    
    Then('li should process the payment') do
     expect(@li.process_payment(@price, @card_minimum)).to include(true)
    end

    Then('li should not process the payment') do
        expect(@li.process_payment(@price, @card_minimum)).to include(false)
        expect(@li.process_payment(@price, @card_minimum)).to include('request cash')
      end
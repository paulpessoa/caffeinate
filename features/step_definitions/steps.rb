require 'caffeinate'

Given('Maria oders ${int} of coffe from Li') do |int|
    @maria = Customer.new
    @li = Associate.new
    @price = int
    @card_minimum = 2
    @maria.orders
    end
    
      When('Maria pays with a credit card') do
        @maria.pays_with_credit
    end
    
    Then('Li should process the payment') do
        expect(@li.process_payment(@price, @card_minimum)).to include(true) 
    end
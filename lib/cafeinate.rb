class Customer
    def order
    end
    def pays_with_credit_card
        end
    end

    class Associate
    def process_payment(price, card_minimum)
        if price >= card_minimum
        return [true, 'process card']
        end
        if price < card_minimum
            return [false, 'request cash']
    end
end
end
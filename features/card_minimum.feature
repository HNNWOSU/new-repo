Feature: Card Minimum

    Scenario: Total charge is over $2 credit card Minimum
    Given Maria orders a $3 of coffee from li
    When Maria pays with a credit card
    Then li should process the payment


    Scenario: Total charge is under $2 credit card Minimum
    Given Maria orders a $1 of coffee from li
    When Maria pays with a credit card
    Then li should not process the payment


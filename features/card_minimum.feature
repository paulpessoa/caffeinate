Feature: Card Minimum

    Scenario: Total charge is over the $2 credit card minimum
    Given Maria oders $3 of coffe from Li
    When Maria pays with a credit card
    Then Li should process the payment
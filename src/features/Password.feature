Feature: Password Validator
    Password Validator checks if the password is valid.

    Scenario: Valid Password
        Given there is a Password Validator
        When the password is valid
        Then the password is valid
    
    Scenario: Password with less than 8 characters
        Given there is a Password Validator
        When the password is less than 8 characters
        Then the password is invalid

    Scenario: Password without uppercase
        Given there is a Password Validator
        When the password does not have uppercase
        Then the password is invalid

    Scenario: Password without number
        Given there is a Password Validator
        When the password does not have number
        Then the password is invalid

    Scenario: Password without special character
        Given there is a Password Validator
        When the password does not have special character
        Then the password is invalid

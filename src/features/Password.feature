Feature: Password Validator
    Password Validator checks if the password is valid.

    @sample_password @valid
    Scenario: Valid Password
        Given there is a Password
        And the password has number
        And the password has uppercase
        And the password has special character
        And the password has 8 characters
        When the password is validated
        Then the password is valid
    
    @sample_password @invalid
    Scenario: Password with less than 8 characters
        Given there is a Password
        And the password has number
        And the password has uppercase
        And the password has special character
        When the password is validated
        Then the password is invalid
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without uppercase
        Given there is a Password
        And the password has number
        And the password has special character
        And the password has 8 characters
        When the password is validated
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without number
        Given there is a Password
        And the password has uppercase
        And the password has special character
        And the password has 8 characters
        When the password is validated
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without special character
        Given there is a Password
        And the password has number
        And the password has uppercase
        And the password has 8 characters
        When the password is validated
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without uppercase and number
        Given there is a Password
        And the password has special character
        And the password has 8 characters
        When the password is validated
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without uppercase and special character
        Given there is a Password
        And the password has number
        And the password has 8 characters
        When the password is validated
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without number and special character
        Given there is a Password
        And the password has uppercase
        And the password has 8 characters
        When the password is validated
        Then the password is invalid

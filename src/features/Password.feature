Feature: Password Validator
    Password Validator checks if the password is valid.

    @sample_password @valid
    Scenario: Valid Password
        Given there is a Password Validator
        When the password is "Prawidlowe.Haslo123"
        Then the password is valid
    
    @sample_password @invalid
    Scenario: Password with less than 8 characters
        Given there is a Password Validator
        When the password is "Has1*"
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without uppercase
        Given there is a Password Validator
        When the password is "haslo.bez.duzej.litery123"
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without number
        Given there is a Password Validator
        When the password is "Haslo.bez.liczby"
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without special character
        Given there is a Password Validator
        When the password is "HasloBezZnaku123"
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without uppercase and number
        Given there is a Password Validator
        When the password is "haslo.tylko.z.znakiem"
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without uppercase and special character
        Given there is a Password Validator
        When the password is "haslotylkozliczba123"
        Then the password is invalid

    @sample_password @invalid
    Scenario: Password without number and special character
        Given there is a Password Validator
        When the password is "HasloTylkoZDuzaLitera"
        Then the password is invalid

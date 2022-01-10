Feature: FizzBuzz

    @fizzbuzz
    Scenario: FizzBuzz for 15
        Given the number 15
        When I play FizzBuzz
        Then I should get FizzBuzz

    @fizzbuzz
    Scenario: FizzBuzz for 3
        Given the number 3
        When I play FizzBuzz
        Then I should get Fizz

    @fizzbuzz
    Scenario: FizzBuzz for 5
        Given the number 5
        When I play FizzBuzz
        Then I should get Buzz

    @fizzbuzz
    Scenario: FizzBuzz for 1
        Given the number 1
        When I play FizzBuzz
        Then I should get "1"

    @fizzbuzz
    Scenario: FizzBuzz for 1000000000
        Given the number 1000000000
        When I play FizzBuzz
        Then I should get Buzz

    @fizzbuzz
    Scenario: FizzBuzz for 1110000000000
        Given the number 1110000000000
        When I play FizzBuzz
        Then I should get FizzBuzz

    @fizzbuzz
    Scenario: FizzBuzz for 111111111111
        Given the number 111111111111
        When I play FizzBuzz
        Then I should get Fizz

    @fizzbuzz
    Scenario: FizzBuzz for 11111111111
        Given the number 11111111111
        When I play FizzBuzz
        Then I should get "11111111111"

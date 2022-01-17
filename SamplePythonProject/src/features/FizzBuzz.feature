Feature: FizzBuzz

    @fizzbuzz
    Scenario Outline: FizzBuzz 
        Given the number <number>
        When I play FizzBuzz
        Then I should get <expected>

        Examples:
            | number        | expected      |
            | 15            | FizzBuzz      |
            | 3             | Fizz          |
            | 5             | Buzz          |
            | 1             | "1"           |
            | 1000000000    | Buzz          |
            | 1110000000000 | FizzBuzz      |
            | 111111111111  | Fizz          |
            | 11111111111   | "11111111111" |

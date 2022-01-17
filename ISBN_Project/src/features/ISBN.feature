Feature: ISBN-13

    @isbn-13
    Scenario Outline: ISBN-13 Validation
        Given the number <number>
        When I check if the ISBN-13 is valid
        Then The number is <result>

        Examples:
            | number            | result      |
            | 9780470059029     | valid       |
            | 9780470059027     | invalid     |
            | 9780470059028     | invalid     |
            | 978047005902      | invalid     |
            | 978-3-16-148410-0 | valid       |
            | 978-3-16-148410-1 | invalid     |
            | 978-3-16-148410-2 | invalid     |
            | 978-3-16-148410   | invalid     |

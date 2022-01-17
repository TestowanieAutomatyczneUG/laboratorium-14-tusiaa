Feature: Author

    @author
    Scenario Outline: Create a new author - Success
        Given name is <name>
        And surname is <surname>
        And email is <email>
        When I try to create a new author
        Then Author is created

        Examples:
            | name  | surname | email    |
            | John  | Doe     | mail@pl  |
            | Jane  | Doe     | mail@pl  |

    @author
    Scenario Outline: Create a new author - Failure
        Given name is <name>
        And surname is <surname>
        And email is <email>
        When I try to create a new author
        Then I get an error

        Examples:
            | name  | surname | email   |
            | John  | Doe     | mail    |
            | Jane  | Doe     | mail    |
            |       | Doe     | mail@pl |
            | John  |         | mail@pl |
            | John  | Doe     |         |




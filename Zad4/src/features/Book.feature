Feature: Book

    @book
    Scenario Outline: Create a new book - Success
        Given title is <title>
        And ISBN is <isbn>
        And author name is <name>
        And author surname is <surname>
        And author email is <email>
        When I create a new author
        And I try to create a new book
        Then Book is created

        Examples:
            | title                 | isbn              | name   | surname | email      |
            | The Lord of the Rings | 978-3-16-148410-0 | J.R.R. | Tolkien | autor@mail |
            | The Hobbit            | 9783161484100     | J.R.R. | Tolkien | autor@mail |

    @book
    Scenario Outline: Create a new book - Failure
        Given title is <title>
        And ISBN is <isbn>
        And author name is <name>
        And author surname is <surname>
        And author email is <email>
        When I create a new author
        And I try to create a new book
        Then I get an error

        Examples:
            | title                 | isbn              | name   | surname | email      |
            |                       | 978-3-16-148410-0 | J.R.R. | Tolkien | autor@mail |
            | The Hobbit            |                   | J.R.R. | Tolkien | autor@mail |
            | The Lord of the Rings | 978-3-16-148410-5 | J.R.R. | Tolkien | autor@mail |
            | The Hobbit            | 978316148410      | J.R.R. | Tolkien | autor@mail |

    @book
    Scenario Outline: Create a new book - Failure because of author
        Given title is <title>
        And ISBN is <isbn>
        And author is <author>
        When I try to create a new book
        Then I get an error

        Examples:
            | title                 | isbn              | author |
            | The Lord of the Rings | 978-3-16-148410-0 | J.R.R. |
            | The Hobbit            | 9783161484100     |        |
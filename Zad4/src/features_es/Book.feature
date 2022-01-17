Característica: Book

    @book @es
    Esquema del escenario: Create a new book - Success
        Dada title is <title>
        Y ISBN is <isbn>
        Y author name is <name>
        Y author surname is <surname>
        Y author email is <email>
        Cuando I create a new author
        Y I try to create a new book
        Entonces Book is created

        Ejemplos:
            | title                 | isbn              | name   | surname | email      |
            | The Lord of the Rings | 978-3-16-148410-0 | J.R.R. | Tolkien | autor@mail |
            | The Hobbit            | 9783161484100     | J.R.R. | Tolkien | autor@mail |

    @book @es
    Esquema del escenario: Create a new book - Failure
        Dada title is <title>
        Y ISBN is <isbn>
        Y author name is <name>
        Y author surname is <surname>
        Y author email is <email>
        Cuando I create a new author
        Y I try to create a new book
        Entonces I get an error

        Ejemplos:
            | title                 | isbn              | name   | surname | email      |
            |                       | 978-3-16-148410-0 | J.R.R. | Tolkien | autor@mail |
            | The Hobbit            |                   | J.R.R. | Tolkien | autor@mail |
            | The Lord of the Rings | 978-3-16-148410-5 | J.R.R. | Tolkien | autor@mail |
            | The Hobbit            | 978316148410      | J.R.R. | Tolkien | autor@mail |

    @book @es
    Esquema del escenario: Create a new book - Failure because of author
        Dada title is <title>
        Y ISBN is <isbn>
        Y author is <author>
        Cuando I try to create a new book
        Entonces I get an error

        Ejemplos:
            | title                 | isbn              | author |
            | The Lord of the Rings | 978-3-16-148410-0 | J.R.R. |
            | The Hobbit            | 9783161484100     |        |
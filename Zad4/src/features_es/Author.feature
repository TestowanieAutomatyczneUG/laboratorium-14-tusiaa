Característica: Author

    @author @es
    Esquema del escenario: Create a new author - Success
        Dada name is <name>
        Y surname is <surname>
        Y email is <email>
        Cuando I try to create a new author
        Entonces Author is created

        Ejemplos:
            | name  | surname | email    |
            | John  | Doe     | mail@pl  |
            | Jane  | Doe     | mail@pl  |

    @author @es
    Esquema del escenario: Create a new author - Failure
        Dada name is <name>
        Y surname is <surname>
        Y email is <email>
        Cuando I try to create a new author
        Entonces I get an error

        Ejemplos:
            | name  | surname | email   |
            | John  | Doe     | mail    |
            | Jane  | Doe     | mail    |
            |       | Doe     | mail@pl |
            | John  |         | mail@pl |
            | John  | Doe     |         |




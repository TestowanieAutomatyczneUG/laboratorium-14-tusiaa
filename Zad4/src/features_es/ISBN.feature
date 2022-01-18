Característica: ISBN-13

    @isbn-13 @es
    Esquema del escenario: ISBN-13 Validation
        Dada the number is <number>
        Cuando I check if the ISBN-13 is valid
        Entonces The number is <result>

        Ejemplos:
            | number            | result      |
            | 9780470059029     | valid       |
            | 9780470059027     | invalid     |
            | 9780470059028     | invalid     |
            | 978047005902      | invalid     |
            | 978-3-16-148410-0 | valid       |
            | 978-3-16-148410-1 | invalid     |
            | 978-3-16-148410-2 | invalid     |
            | 978-3-16-148410   | invalid     |

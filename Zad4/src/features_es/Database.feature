Característica: Database

    @database @en @mock
    Escenario: Database - add author
        Dada an author
        Y mock function add_author
        Cuando I add author
        Entonces function add_author should be called with author

    @database @en @mock
    Escenario: Database - add book
        Dada an author
        Y a book
        Y mock function add_book
        Cuando I add book
        Entonces function add_book should be called with book

    @database @en @mock
    Escenario: Database - get author
        Dada an author
        Y mock function get_author
        Y author with id 1 exists
        Cuando I get author
        Entonces function get_author should be called with id

    @database @en @mock
    Escenario: Database - get author not found
        Dada mock function get_author
        Y author with id 1 does not exist
        Cuando I get author
        Entonces function get_author should return error

    @database @en @mock
    Escenario: Database - get book
        Dada an author
        Y a book 
        Y mock function get_book
        Y book with ISBN 9783161484100 exists
        Cuando I get book
        Entonces function get_book should be called with isbn

    @database @en @mock
    Escenario: Database - get book not found
        Dada mock function get_book
        Y book with ISBN 9783161484100 does not exist
        Cuando I get book
        Entonces function get_book should return error

    @database @en @mock
    Escenario: Database - get all books
        Dada mock function get_all_books
        Cuando I get all books
        Entonces function get_all_books should be called

    @database @en @mock
    Escenario: Database - get all authors
        Dada mock function get_all_authors
        Cuando I get all authors
        Entonces function get_all_authors should be called

    @database @en @mock
    Escenario: Database - delete author
        Dada an author  
        Y mock function delete_author
        Y author with id 1 exists
        Cuando I delete author
        Entonces function delete_author should be called with id

    @database @en @mock
    Escenario: Database - delete author not found
        Dada mock function delete_author
        Y author with id 1 does not exist
        Cuando I delete author
        Entonces function delete_author should return Error

    @database @en @mock
    Escenario: Database - delete book
        Dada an author 
        Y a book 
        Y mock function delete_book
        Y book with ISBN 9783161484100 exists
        Cuando I delete book
        Entonces function delete_book should be called with isbn

    @database @en @mock
    Escenario: Database - delete book not found
        Dada mock function delete_book
        Y book with ISBN 9783161484100 does not exist
        Cuando I delete book
        Entonces function delete_book should return Error

    @database @en @mock
    Escenario: Database - update author
        Dada an author
        Y mock function update_author
        Y author with id 1 exists
        Cuando I update author
        Entonces function update_author should be called with id and author

    @database @en @mock
    Escenario: Database - update author not found
        Dada mock function update_author
        Y author with id 1 does not exist
        Cuando I update author
        Entonces function update_author should return Error

    @database @en @mock
    Escenario: Database - update book
        Dada an author
        Y a book 
        Y mock function update_book
        Y book with ISBN 9783161484100 exists
        Cuando I update book
        Entonces function update_book should be called with isbn and book

    @database @en @mock
    Escenario: Database - update book not found
        Dada mock function update_book
        Y book with ISBN 9783161484100 does not exist
        Cuando I update book
        Entonces function update_book should return Error

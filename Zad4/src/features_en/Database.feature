Feature: Database

    @database @en @mock
    Scenario: Database - add author
        Given an author
        And mock function add_author
        When I add author
        Then function add_author should be called with author

    @database @en @mock
    Scenario: Database - add book
        Given an author
        And a book
        And mock function add_book
        When I add book
        Then function add_book should be called with book

    @database @en @mock
    Scenario: Database - get author
        Given an author
        And mock function get_author
        And author with id 1 exists
        When I get author
        Then function get_author should be called with id

    @database @en @mock
    Scenario: Database - get author not found
        Given mock function get_author
        And author with id 1 does not exist
        When I get author
        Then function get_author should return error

    @database @en @mock
    Scenario: Database - get book
        Given an author
        And a book 
        And mock function get_book
        And book with ISBN 9783161484100 exists
        When I get book
        Then function get_book should be called with isbn

    @database @en @mock
    Scenario: Database - get book not found
        Given mock function get_book
        And book with ISBN 9783161484100 does not exist
        When I get book
        Then function get_book should return error

    @database @en @mock
    Scenario: Database - get all books
        Given mock function get_all_books
        When I get all books
        Then function get_all_books should be called

    @database @en @mock
    Scenario: Database - get all authors
        Given mock function get_all_authors
        When I get all authors
        Then function get_all_authors should be called

    @database @en @mock
    Scenario: Database - delete author
        Given an author  
        And mock function delete_author
        And author with id 1 exists
        When I delete author
        Then function delete_author should be called with id

    @database @en @mock
    Scenario: Database - delete author not found
        Given mock function delete_author
        And author with id 1 does not exist
        When I delete author
        Then function delete_author should return Error

    @database @en @mock
    Scenario: Database - delete book
        Given an author 
        And a book 
        And mock function delete_book
        And book with ISBN 9783161484100 exists
        When I delete book
        Then function delete_book should be called with isbn

    @database @en @mock
    Scenario: Database - delete book not found
        Given mock function delete_book
        And book with ISBN 9783161484100 does not exist
        When I delete book
        Then function delete_book should return Error

    @database @en @mock
    Scenario: Database - update author
        Given an author
        And mock function update_author
        And author with id 1 exists
        When I update author
        Then function update_author should be called with id and author

    @database @en @mock
    Scenario: Database - update author not found
        Given mock function update_author
        And author with id 1 does not exist
        When I update author
        Then function update_author should return Error

    @database @en @mock
    Scenario: Database - update book
        Given an author
        And a book 
        And mock function update_book
        And book with ISBN 9783161484100 exists
        When I update book
        Then function update_book should be called with isbn and book

    @database @en @mock
    Scenario: Database - update book not found
        Given mock function update_book
        And book with ISBN 9783161484100 does not exist
        When I update book
        Then function update_book should return Error

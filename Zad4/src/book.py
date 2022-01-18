from src.author import Author
from src.ISBN import ISBN

class Book:
    def __init__(self, title: str, author: Author, isbn: str):
        if not isinstance(title, str) or not title:
            raise TypeError("title must be a string")
        if not isinstance(author, Author):
            raise TypeError("author must be an Author object")
        if not ISBN(isbn):
            raise ValueError("isbn must be a valid ISBN")
        self.title = title
        self.author = author
        self.isbn = isbn




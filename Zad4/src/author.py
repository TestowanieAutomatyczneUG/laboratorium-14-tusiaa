class Author:
    def __init__(self, name: str, surname: str, email: str):
        if not isinstance(name, str) or not name:
            raise TypeError("name must be a string")
        if not isinstance(surname, str) or not surname:
            raise TypeError("surname must be a string")
        if not isinstance(email, str) or not email:
            raise TypeError("email must be a string")
        if not "@" in email:
            raise ValueError("email must contain @")
        self.name = name
        self.surname = surname
        self.email = email
        
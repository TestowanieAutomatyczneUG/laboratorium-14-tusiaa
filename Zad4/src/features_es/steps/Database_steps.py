from webbrowser import get
from behave import *
from src.database import *
from unittest.mock import *

@given("an author")
def step_impl(context):
    context.author = Author("J.R.R.", "Tolkien", "autor@mail")

@given("a book")
def step_impl(context):
    context.book = Book("The Lord of the Rings", context.author, "9783161484100")

@given("mock function {function}")
def step_impl(context, function):
    context.function = Mock(getattr(Database, function))

@given("author with id {id} does not exist")
def step_impl(context, id):
    context.function.return_value = ValueError

@given("author with id {id} exists")
def step_impl(context, id):
    context.id = id
    context.function.return_value = context.author

@given("book with ISBN {isbn} does not exist")
def step_impl(context, isbn):
    context.function.return_value = ValueError

@given("book with ISBN {isbn} exists")
def step_impl(context, isbn):
    context.isbn = isbn
    context.function.return_value = context.book

@when("I add author")
def step_impl(context):
    try:
        context.function(context.author)
    except:
        context.error = True

@when("I add book")
def step_impl(context):
    try:
        context.function(context.book)
    except:
        context.error = True

@when("I get author")
def step_impl(context):
    try:
        context.author = context.function(context.id)
    except:
        context.error = True

@when("I get book")
def step_impl(context):
    try:
        context.book = context.function(context.isbn)
    except:
        context.error = True

@when("I get all authors")
def step_impl(context):
    try:
        context.authors = context.function()
    except:
        context.error = True

@when("I get all books")
def step_impl(context):
    try:
        context.books = context.function()
    except:
        context.error = True

@when("I update author")
def step_impl(context):
    try:
        context.function(context.id, context.author)
    except:
        context.error = True

@when("I update book")
def step_impl(context):
    try:
        context.function(context.isbn, context.book)
    except:
        context.error = True

@when("I delete author")
def step_impl(context):
    try:
        context.function(context.id)
    except:
        context.error = True

@when("I delete book")
def step_impl(context):
    try:
        context.function(context.isbn)
    except:
        context.error = True

@then("function {function} should be called")
def step_impl(context, function):
    context.function.assert_called_once()

@then("function {function} should be called with {arg1} and {arg2}")
def step_impl(context, function, arg1, arg2):
    context.function.assert_called_with(getattr(context, arg1), getattr(context, arg2))  

@then("function {function} should be called with {arg}")
def step_impl(context, function, arg):
    context.function.assert_called_with(getattr(context, arg))

@then("function {function} should return error")
def step_impl(context, function):
    assert context.error
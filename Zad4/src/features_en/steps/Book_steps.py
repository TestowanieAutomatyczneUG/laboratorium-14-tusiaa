from behave import *
from src.book import *

@given("title is ")
def step_impl(context):
    context.title = ""

@given("ISBN is ")
def step_impl(context):
    context.isbn = ""

@given("author is ")
def step_impl(context):
    context.author = ""

@given("title is {title}")
def step_impl(context, title):
    context.title = title

@given("ISBN is {isbn}")
def step_impl(context, isbn):
    context.isbn = isbn

@given("author name is {name}")
def step_impl(context, name):
    context.name = name

@given("author surname is {surname}")
def step_impl(context, surname):
    context.surname = surname

@given("author email is {email}")
def step_impl(context, email):
    context.email = email

@given("author is {author}")
def step_impl(context, author):
    context.author = author

@when("I create a new author")
def step_impl(context):
    context.author = Author(context.name, context.surname, context.email)

@when("I try to create a new book")
def step_impl(context):
    try:
        context.book = Book(context.title, context.author, context.isbn)
    except:
        context.error = True

@then("Book is created")
def step_impl(context):
    assert context.book


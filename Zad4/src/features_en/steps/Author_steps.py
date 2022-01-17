from behave import *
from src.author import Author

@given("name is ")
def step_impl(context):
    context.name = ""

@given("surname is ")
def step_impl(context, ):
    context.surname = ""

@given("email is ")
def step_impl(context):
    context.email = ""

@given("name is {name}")
def step_impl(context, name):
    context.name = name

@given("surname is {surname}")
def step_impl(context, surname):
    context.surname = surname

@given("email is {email}")
def step_impl(context, email):
    context.email = email

@when("I try to create a new author")
def step_impl(context):
    try:
        context.author = Author(context.name, context.surname, context.email)
    except:
        context.error = True

@then("Author is created")
def step_impl(context):
    assert context.author

@then("I get an error")
def step_impl(context):
    assert context.error


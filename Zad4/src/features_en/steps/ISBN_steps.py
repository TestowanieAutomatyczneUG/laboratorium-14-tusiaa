from behave import *
from src.ISBN import *

@given("the number is {number}")
def step_impl(context, number):
    context.number = number

@when("I check if the ISBN-13 is valid")
def step_impl(context):
    context.result = ISBN(context.number)

@then("The number is {result}")
def step_impl(context, result):
    if result == "valid":
        assert context.result
    else:
        assert not context.result

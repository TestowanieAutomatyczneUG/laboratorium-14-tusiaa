from behave import *
from src.FizzBuzz import *

@given("the number {number}")
def step_impl(context, number):
    context.number = int(number)

@when("I play FizzBuzz")
def step_impl(context):
    context.result = context.fizzbuzz.game(context.number)

@then("I should get {result}")
def step_impl(context, result):
    assert context.result == result

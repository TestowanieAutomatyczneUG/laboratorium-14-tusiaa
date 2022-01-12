from src.FizzBuzz import FizzBuzz

def before_scenario(context, scenario):
	context.fizzbuzz = FizzBuzz()

def after_scenario(context, scenario):
	del context.fizzbuzz
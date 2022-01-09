from behave import *
from src.Password import *

@given("there is a Password Validator")
def step_impl(context):
    context.password = Password()

@when('the password is "{password}"')
def step_impl(context, password):
    context.sample_password = password

@then("the password is valid")
def step_impl(context):
    assert context.password.ValidPassword(context.sample_password) == True

@then("the password is invalid")
def step_impl(context):
    assert context.password.ValidPassword(context.sample_password) == False

from behave import *
from src.Password import *

use_step_matcher("re")

@given("there is a Password Validator")
def step_impl(context):
    context.password = Password()

@when("the password is valid")
def step_impl(context):
    context.sample_password = "Prawidlowe.Haslo123"

@when("the password is less than 8 characters")
def step_impl(context):
    context.sample_password = "Has1*"

@when("the password does not have uppercase")
def step_impl(context):
    context.sample_password = "haslo.bez.duzej.litery123"

@when("the password does not have number")
def step_impl(context):
    context.sample_password = "Haslo.bez.liczby"

@when("the password does not have special character")
def step_impl(context):
    context.sample_password = "HasloBezZnaku123"

@then("the password is valid")
def step_impl(context):
    assert context.password.ValidPassword(context.sample_password) == True

@then("the password is invalid")
def step_impl(context):
    assert context.password.ValidPassword(context.sample_password) == False

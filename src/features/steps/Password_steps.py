from behave import *
from src.Password import *

@given("there is a Password")
def step_impl(context):
    context.password = Password()
    context.sample_password = ""

@given("the password has {number} characters")
def step_impl(context, number):
    lengh = int(number) - len(context.sample_password)
    context.sample_password += "a" * lengh    

@given("the password has {condision}")
def step_impl(context, condision):
    if condision == "number":
        context.sample_password += "1"
    elif condision == "uppercase":
        context.sample_password += "A"
    elif condision == "special character":
        context.sample_password += "."

@when('the password is validated')
def step_impl(context):
    context.valid = context.password.ValidPassword(context.sample_password)

@then("the password is valid")
def step_impl(context):
    assert context.valid == True

@then("the password is invalid")
def step_impl(context):
    assert context.valid == False

When(/^I multiple a number with zero$/) do
  @mul = Calculator.new.multiply 12, 0
end

When(/^I multiple two different numbers$/) do
  @mul = Calculator.new.multiply 12, 4
end

Then(/^the product is zero$/) do
  expect(@mul).to eq 0
end

When(/^I multiply the first numbers to the second number$/) do
  @mul = Calculator.new.multiply 10, 4
end

And(/^I multiply the second numbers to the first number$/) do
  @mul = Calculator.new.multiply 4, 10
end

Then(/^the products is same$/) do
  expect
end

When(/^I multiple a number with one$/) do
  pending
end

Then(/^the product is same as the number$/) do
  pending
end
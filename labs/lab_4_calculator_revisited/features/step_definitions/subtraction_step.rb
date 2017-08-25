require 'calculator'

And(/^I subtract a second number from a first numbers$/) do
  @difference2 =@calc.sub 7,  10
end

When(/^I subtract a smaller number from a greater numbers$/) do
  @subtract = Calculator.new.sub 10,7
end
Then /^I get the difference$/ do
  expect(@subtract).to eq 3
end

When(/^I subtract a first number from a second numbers$/) do
  @calc = Calculator.new
  @difference1 =@calc.sub 10, 7
 end

Then(/^difference from first should not match the second one$/) do
  expect(@difference1).to_not eq (@difference2)
end

When(/^I subtract zero from a first integer that is greater than zero$/) do
  @subtract = Calculator.new.sub 10,0
end

Then(/^the difference is that same first integer$/) do
  expect(@subtract).to eq 10
end

When(/^I subtract the same numbers$/) do
  @subtract = Calculator.new.sub 10,10
end

Then(/^the difference is zero$/) do
  expect(@subtract).to eq 0
end

When(/^I subtract more than two numbers$/) do
  pending
end
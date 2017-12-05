
Then('Left Unit picker value should be {string}') do |value|
  puts('Left unit picker value is ' + value)
end

Then('Right unit picker value should be {string}') do |value|
  puts('Right unit picker value is ' + value)
end

Then(/^Show all button should be (enabled|disabled|undefined)$/) do |state|
  if state == 'enabled'
    puts('button is enabled')
  elsif state == 'disabled'
    puts('button is disabled')
  elsif state == 'undefined'
    puts('button is undefined')
  end
end

When('I press on Clear button') do
  puts('Clear button is pressed')
end


When(/^I type "([^"]*)" to target text field$/) do |target|
  puts('target is ' + target)
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  puts("result is #{result}")
end


Then(/^I press on Favorites icon$/) do
  find_element(id: "action_add_favorites").click
end

Then(/^I press on Favorites conversions$/) do
  text("Избранные конверсии").click
end

And(/^I verify "([^"]*)" added to Favorite conversions list$/) do |unit_type|
  text(unit_type)
end
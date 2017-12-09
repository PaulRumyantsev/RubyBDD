

Then(/^Left Unit picker value should be "([^"]*)"$/) do |value|
  actual_picker_text = find_elements(id: 'select_unit_spinner')[0].text

  if actual_picker_text != value
    fail("Expexted left unit picker value is #{value}, actual value is #{actual_picker_text}")
  end

end

And(/^Right unit picker value should be "([^"]*)"$/) do |value|
  array_of_elements = find_elements(id: 'select_unit_spinner')
  actual_picker_text = array_of_elements[1].text

  if actual_picker_text != value
    fail("Expexted right unit picker value is #{value}, actual value is #{actual_picker_text}")
  end
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
  find_element(id: 'action_add_favorites').click
end

Then(/^I press on Favorites conversions$/) do
  text('Избранные конверсии').click
end

And(/^I verify "([^"]*)" added to Favorite conversions list$/) do |unit_type|
  text(unit_type)
end



Then(/^I press in search icon$/) do
  find_element(id: 'action_search').click
end

Then(/^I type "([^"]*)" in search field$/) do |text|
  find_element(id:'search_src_text').send_keys(text)
end

And(/^I press return button on soft keyboard$/) do
  Appium::TouchAction.new.tap(x: 995.0, y: 1842.0, count: 1).perform
end

Then(/^I see "([^"]*)" as a current unit converter$/) do |current_unit|
  text(current_unit)
end

Given('I land on home screen') do
  find_element(id: "action_search")
  find_element(id: "action_add_favorites")
end

When('I press on menu icon') do
  find_element(accessibility_id: "Открыть меню").click
end

Then('I should see left side menu') do
  text("Конвертер Величин")
end

When('I press on My conversions button') do
  text("Мои конверсии").click
end

Then('I land on My conversions screen') do
  text("Личные конверсии не созданы")
end

Given(/^I'm on the Shoe Store website$/) do
  shoe_display_page.go_to_page()
end
 
When(/^I click on the (\w+) link$/) do | month |
  navigation_bar.click_month_link(month)
end
 
Then(/^I should see a blurb for each shoe$/) do
  shoes = shoe_display_page.get_shoes()
  shoes.each do |shoe|
    shoe.assert_selector('td.shoe_description', :count => 1)
  end
end

And(/^I should see a picture for each shoe$/) do
  shoes = shoe_display_page.get_shoes()
  shoes.each do |shoe|
    shoe.assert_selector('td.shoe_image img', :count => 1)
  end
end

And(/^I should see a suggested price for each shoe$/) do
  shoes = shoe_display_page.get_shoes()

  shoes.each do |shoe|
    shoe.assert_selector('td.shoe_price', :count => 1)
  end
end

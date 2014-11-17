Given(/^I'm on the Shoe Store website$/) do
visit('http://shoestore-manheim.rhcloud.com/')
end
 
When(/^I click on the (\w+) link$/) do | month |
click_link(month)
end
 
Then(/^I should see a blurb for each shoe$/) do
  shoes = find_by_id('shoe_list').all('li')
  shoes.each do |shoe|
    shoe.assert_selector('td.shoe_description', :count => 1)
  end
end

And(/^I should see a picture for each shoe$/) do
  shoes = find_by_id('shoe_list').all('li')
  shoes.each do |shoe|
    picture=shoe.find('td.shoe_image img')
    picture['src'].should_not be_nil
  end
end

And(/^I should see a suggested price for each shoe$/) do
  shoes = find_by_id('shoe_list').all('li')

  shoes.each do |shoe|
    shoe.assert_selector('td.shoe_price', :count => 1)
  end
end

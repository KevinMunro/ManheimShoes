Given(/^I'm on the Shoe Store website$/) do
visit('http://shoestore-manheim.rhcloud.com/')
end
 
When(/^I click on the (\w+) link$/) do | month |
click_link(month)
end
#todo: combine the three then's into one 
Then(/^I should see a blurb for each shoe$/) do
  shoes = find_by_id('shoe_list').all('li')

  shoes.each do |shoe|
    shoe.assert_selector('td.shoe_description', :count => 1)
  end
end

Then(/^I should see a picture for each shoe$/) do
  shoes = find_by_id('shoe_list').all('li')
  shoes.each do |shoe|
    pictures=shoe.all('td.shoe_image img')
    pictures.each do |picture|
      picture['src'].should_not be_nil
    end
  end
end

Then(/^I should see a suggested price for each shoe$/) do
  shoes = find_by_id('shoe_list').all('li')

  shoes.each do |shoe|
    shoe.assert_selector('td.shoe_price', :count => 1)
  end
end

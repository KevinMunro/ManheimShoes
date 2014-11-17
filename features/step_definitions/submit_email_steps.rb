Given(/^I am on the Shoe Store website$/) do
  visit('http://shoestore-manheim.rhcloud.com/')
end

When(/^I submit a valid email address$/) do
  mail_field=find('#remind_email_input')
  mail_field.set('mail@mail.com')
  mail_field.first(:xpath,".//..").find("input[type='submit']").click
end
 
Then(/^I should see a confirmation message appear$/) do
  page.should have_content("Thanks! We will notify you of our new shoes at this email: mail@mail.com")
end

When(/^I submit an invalid email address$/) do
  mail_field=find('#remind_email_input')
  mail_field.set('mail')
  mail_field.first(:xpath,".//..").find("input[type='submit']").click
end
 
Then(/^I should not see a confirmation message appear$/) do
  page.should_not have_content("Thanks! We will notify you of our new shoes at this email: mail")
end




@submit_email
Feature: Submit Email

	In order to be reminded of upcoming shoe releases, a user
	should have the ability to submit their email address.


	Scenario: Submit valid email address
	  Given I am on the Shoe Store website
	  When I submit a valid email address
	  Then I should see a confirmation message appear

	Scenario: Submit invalid email address
	  Given I am on the Shoe Store website
	  When I submit an invalid email address
	  Then I should not see a confirmation message appear

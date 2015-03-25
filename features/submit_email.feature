@submit_email
Feature: Submit Email

	In order to be reminded of upcoming shoe releases, a user
	should have the ability to submit their email address.


	Scenario Outline: Submit valid email address
	  Given I am on the Shoe Store website
	  When I submit <address> as the email address
	  Then I should see a confirmation message appear

          Examples:
            |address|
            |mail@mail.com|
            |mail.user@mail.com|

	Scenario Outline: Submit invalid email address
	  Given I am on the Shoe Store website
	  When I submit <address> as the email address
	  Then I should not see a confirmation message appear

          Examples:
            |address|
            |mail|
            |@mail.com|

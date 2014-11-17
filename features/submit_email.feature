@submit_email
Feature: Submit Email

	In order to be reminded of upcoming shoe releases, a user
	should have the ability to submit their email address.


	Scenario: Submit valid email address
	  Given I am on the Shoe Store website
	  When I submit a valid email address
	  Then a confirmation message should appear

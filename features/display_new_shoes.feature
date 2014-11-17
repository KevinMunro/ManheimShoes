@display_new_shows
Feature: Display New Shoes

	The Shoe Store provides information on new shoes being released

	In order for the user to view new releases, the user
	should have the ability to view shoes being released each month


	Scenario Outline: View new releases of month
	  Given I'm on the Shoe Store website
	  When I click on the <month> link
	  Then I should see a blurb for each shoe
	  And I should see a picture for each shoe
	  And I should see a suggested price for each shoe

	  Examples:
	    | month |
	    | January |
	    | February |
	    | March |
	    | April |
	    | May |
	    | June |
	    | July |
	    | August |
	    | September |
	    | October |
	    | November |
	    | December |

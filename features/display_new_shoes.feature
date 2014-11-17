@display_new_shows
Feature: Display New Shoes

	The Shoe Store provides information on new shoes being released

	In order for the user to view new releases, the user
	should have the ability to view shoes being released each month


	Scenario: View new releases of month
	  Given I am on the Shoe Store website
	  When I click on the <month> link
	  Then each shoe should have a blurp
	  And each shoe should have a picture
	  And each shoe should have a suggested price

	  Examples:
	    | Month |
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

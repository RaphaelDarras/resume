Feature: Login
	Scenario: Log as standard user
		Given I am on the login page
		When I enter the 'standard' user credentials
		Then I am on the inventory page

	Scenario: Log as locked out user
		Given I am on the login page
		When I enter the 'locked out' user credentials
		Then I see an error message on the login page

	Scenario: Log as valid users
		Given I am on the login page
		When I enter the '<userType>' user credentials
		Then I am on the inventory page

	Examples:
		| userType |
		| standard |
		| problem |
		| performance glitch |
		| error |
		| visual |
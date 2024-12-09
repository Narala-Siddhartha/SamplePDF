Feature: Prompt User for Username or Email

Scenario: Display prompt for username or email on login or account recovery page
  Given I am on the login or account recovery page
  When the page loads
  Then I should see a prompt asking for my registered username or email address
  And the prompt should be clearly visible and easy to understand

Scenario: Accept both username and email address formats in input field
  Given I am on the login or account recovery page
  When I enter my registered username or email address in the input field
  Then the input field should accept the entered value

Scenario: Display error message when input is left blank
  Given I am on the login or account recovery page
  When I leave the input field blank
  And I attempt to proceed
  Then I should see an error message indicating that the input cannot be left blank

Scenario: Validate input format for username or email address
  Given I am on the login or account recovery page
  When I enter a value in the input field
  Then the system should validate the input to ensure it matches the format of a username or email address

Feature: Prompt User for Password Input

Scenario: Display password input field upon entering username or email
  Given the user has entered their username or email
  When the system detects the input of a username or email
  Then the system should display a password input field

Scenario: Mask password input for privacy
  Given the user is entering their password
  When the user types into the password input field
  Then the password input should be masked

Scenario: Provide a clear label for password input
  Given the user is on the login page
  When the password input field is displayed
  Then the system should provide a clear label indicating that the user needs to enter their password

Scenario: Allow user to submit password for authentication
  Given the user has entered their password
  When the user submits the password
  Then the system should process the password for authentication

Scenario: Handle empty password submissions
  Given the user has not entered a password
  When the user attempts to submit the password
  Then the system should display an appropriate error message indicating that the password field cannot be empty

Feature: User Authentication Against Stored Data

Scenario: Successful authentication with correct credentials
  Given the user has an account with a stored username and password
  When the user enters the correct username and password
  Then the user should be granted access to their account
  And the authentication process should be completed within 2 seconds
  And the system should log the authentication attempt for security auditing purposes

Scenario: Failed authentication with incorrect credentials
  Given the user has an account with a stored username and password
  When the user enters an incorrect username or password
  Then the user should receive an error message indicating incorrect login details
  And the authentication process should be completed within 2 seconds
  And the system should log the authentication attempt for security auditing purposes

Feature: Password Format Validation

Scenario: Password meets all security criteria
  Given the user is on the password creation page
  When the user enters a password that is at least 8 characters long
  And the password includes at least one number
  And the password includes at least one symbol
  And the password includes at least one uppercase letter
  And the password includes at least one lowercase letter
  Then the system should accept the password as valid

Scenario: Password is too short
  Given the user is on the password creation page
  When the user enters a password that is less than 8 characters long
  Then the system should display an error message indicating the password must be at least 8 characters long

Scenario: Password lacks a number
  Given the user is on the password creation page
  When the user enters a password that does not include any numbers
  Then the system should display an error message indicating the password must include at least one number

Scenario: Password lacks a symbol
  Given the user is on the password creation page
  When the user enters a password that does not include any symbols
  Then the system should display an error message indicating the password must include at least one symbol

Scenario: Password lacks an uppercase letter
  Given the user is on the password creation page
  When the user enters a password that does not include any uppercase letters
  Then the system should display an error message indicating the password must include at least one uppercase letter

Scenario: Password lacks a lowercase letter
  Given the user is on the password creation page
  When the user enters a password that does not include any lowercase letters
  Then the system should display an error message indicating the password must include at least one lowercase letter

Scenario: Password fails multiple criteria
  Given the user is on the password creation page
  When the user enters a password that is less than 8 characters long
  And the password does not include any numbers
  And the password does not include any symbols
  And the password does not include any uppercase letters
  And the password does not include any lowercase letters
  Then the system should display an error message indicating all the criteria that were not met
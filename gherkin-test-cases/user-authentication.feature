Feature: User Identification Prompt

Scenario: Display prompt for username or email address entry
  Given the user is on the login page
  When the page loads
  Then the system should display a prompt for the user to enter their registered username or email address
  And the prompt should clearly indicate that either the username or email address can be used

Scenario: Validate input format for username or email address
  Given the user is on the login page
  And the prompt for entering username or email address is displayed
  When the user enters their input
  Then the system should validate the input to ensure it matches the format of a username or email address

Scenario: Display error message for invalid input
  Given the user is on the login page
  And the prompt for entering username or email address is displayed
  When the user enters an invalid username or email address
  Then an error message should be displayed
  And the error message should indicate the correct format required for a username or email address

Feature: User Login Authentication

Scenario: Successful login with correct credentials
  Given the user is on the login page
  When the user enters a valid username or email
  And the user enters the correct password
  Then the user should be granted access to the system

Scenario: Unsuccessful login with incorrect credentials
  Given the user is on the login page
  When the user enters a valid username or email
  And the user enters an incorrect password
  Then the user should be notified with an appropriate error message

Scenario: Unsuccessful login with non-existent username or email
  Given the user is on the login page
  When the user enters a non-existent username or email
  And the user enters any password
  Then the user should be notified with an appropriate error message

Feature: Password Format Validation

Scenario: Password meets all security requirements
  Given the user is on the password creation page
  When the user enters a password that is at least 8 characters long
  And the password includes at least one uppercase letter
  And the password includes at least one lowercase letter
  And the password includes at least one numerical digit
  And the password includes at least one special symbol
  Then the password should be accepted as valid

Scenario: Password is too short
  Given the user is on the password creation page
  When the user enters a password that is less than 8 characters long
  Then an error message should be displayed
  And the message should specify that the password must be at least 8 characters long

Scenario: Password missing uppercase letter
  Given the user is on the password creation page
  When the user enters a password without any uppercase letters
  Then an error message should be displayed
  And the message should specify that the password must include at least one uppercase letter

Scenario: Password missing lowercase letter
  Given the user is on the password creation page
  When the user enters a password without any lowercase letters
  Then an error message should be displayed
  And the message should specify that the password must include at least one lowercase letter

Scenario: Password missing numerical digit
  Given the user is on the password creation page
  When the user enters a password without any numerical digits
  Then an error message should be displayed
  And the message should specify that the password must include at least one numerical digit

Scenario: Password missing special symbol
  Given the user is on the password creation page
  When the user enters a password without any special symbols
  Then an error message should be displayed
  And the message should specify that the password must include at least one special symbol
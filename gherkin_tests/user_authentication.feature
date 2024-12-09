Feature: User Identification Prompt

Scenario: Prompt user to enter registered username or email for login
  Given the user is on the login page
  When the user attempts to log in
  Then the system should prompt the user to enter their registered username or email address

Scenario: Prompt user to enter registered username or email for account recovery
  Given the user is on the account recovery page
  When the user initiates the account recovery process
  Then the system should prompt the user to enter their registered username or email address

Feature: User Login Authentication

Scenario: Successful login with username and password
  Given I am a registered user with a valid username and password
  When I enter my username
  And I enter my password
  Then I should be authenticated
  And I should gain access to the system

Scenario: Successful login with email and password
  Given I am a registered user with a valid email and password
  When I enter my email
  And I enter my password
  Then I should be authenticated
  And I should gain access to the system

Scenario: Unsuccessful login with incorrect password
  Given I am a registered user with a valid username or email
  When I enter my username or email
  And I enter an incorrect password
  Then I should not be authenticated
  And I should see an error message indicating incorrect password

Scenario: Unsuccessful login with unregistered username or email
  Given I am not a registered user
  When I enter an unregistered username or email
  And I enter any password
  Then I should not be authenticated
  And I should see an error message indicating unregistered username or email

Feature: Password Format Validation

Scenario: Password meets all security requirements
  Given I am a user attempting to set a new password
  When I enter a password that meets the predefined security rules
  Then the system should accept the password
  And display a message confirming the password is valid

Scenario: Password is too short
  Given I am a user attempting to set a new password
  When I enter a password that is shorter than the minimum length requirement
  Then the system should reject the password
  And display an error message indicating the password is too short

Scenario: Password lacks uppercase letters
  Given I am a user attempting to set a new password
  When I enter a password that does not contain any uppercase letters
  Then the system should reject the password
  And display an error message indicating the need for at least one uppercase letter

Scenario: Password lacks lowercase letters
  Given I am a user attempting to set a new password
  When I enter a password that does not contain any lowercase letters
  Then the system should reject the password
  And display an error message indicating the need for at least one lowercase letter

Scenario: Password lacks numbers
  Given I am a user attempting to set a new password
  When I enter a password that does not contain any numbers
  Then the system should reject the password
  And display an error message indicating the need for at least one number

Scenario: Password lacks special characters
  Given I am a user attempting to set a new password
  When I enter a password that does not contain any special characters
  Then the system should reject the password
  And display an error message indicating the need for at least one special character

Scenario: Password contains spaces
  Given I am a user attempting to set a new password
  When I enter a password that contains spaces
  Then the system should reject the password
  And display an error message indicating that spaces are not allowed in the password
Feature:Application login Tests

  Background: This background run before each scenario
    Given I navigate to xyz url
    When I type my username as "Shabbir"

  Scenario: User should  not be able to to login using valid username adn invalid password

    And I type my password as "0123"
    And I click on login button
    Then I see the dashboard page

Feature: Application Login Tests

  Background: This background run before each scenario
    Given I navigate to xyz url

  @regression
  Scenario Outline: User should not be able to log in using incorrect credentials
    #this is how you comment
    When I type my username as "<username>" in 'login' page
    And I type my password as "<password>" 'login' page
    And I click 'login' in button 'login' page
    Then I see the 'dashboard' page
    Then I count something to <int>
    Examples:
      | Serial# | username         | password       | int |
      | 1       | saifur           | 0123           | 1   |
      | 2       | invalidusername  | validPassowrd  | 2   |
      | 3       | invalidusername1 | validPassowrd1 | 3   |

  @smoke @regression
  Scenario: I validate the size dropdown list
    When I log in somehow
    Then I validate the size dropdown list
      | S |
      | M |
      | L |

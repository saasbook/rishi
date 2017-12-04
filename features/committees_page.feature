Feature: a user can see see all the committee pages

As a viewer of the site 
I want to be able to see the committee pages of all committees that UC Berkeley Project Rishi serves 
So that I can learn what each committee is

Background: Comittees in database

  Given the following comittees exist:
  | name               |
  | Ecological Indian  |
  | Levees             |
  
Scenario: A user is able to go to the committees page
    Given I am on the home page
    When I follow "PROJECTS"
    Then I should be on the committees page

Scenario: Seeing multiple committees on the committees page
    Given I am on the committees page
    Then I should see "Ecological Indian"
    And I should see "Levees"
    
Scenario: A user is able to go to the specific committee page
    Given I am on the committees page
    When I follow "Levees"
    Then I should be on the Levees committee page
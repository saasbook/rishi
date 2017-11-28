Feature: external user can see what committees belong to what wards

As an external viewer of the site on the homepage 
I want to be able to see the different committees on each ward that UC Berkeley Project Rishi serves 
So that I can learn which committees are involved with each ward

Background: Comittees in database

  Given the following comittees exist:
  | name               |
  | Ecological Indian  |
  | Levees             |
  
Scenario: CLick on the Projects link should redirect to committees page
    Given I am on the home page
    When I follow "PROJECTS"
    Then I should be on the committees page

Scenario: Seeing multiple committees on the committees page
    Given I am on the committees page
    Then I should see "Ecological Indian"
    And I should see "Levees"
    
Scenario: Click on the committee title should redirect to that committee page
    Given I am on the committees page
    When I follow "Levees"
    Then I should be on the Levees committee page
Feature: external user can see a map of wards UC Berkeley Project RISHI serves

As an external viewer of the site on the homepage
I want to be able to see a map of the village UC Berkeley Project Rishi serves
So that I can see what area of India they are deployed in. 

Background: wards have been added to database
  
  Given the following wards exist:
  | name        | color        
  | Ward 1      | red
  | Ward 2      | yellow
  | Ward 3      | green
  | Ward 4      | blue
  
Scenario: seeing all the wards on the map
  Given I am on the home page
  Then I should see ward "Ward 1" on the map
  And I should see ward "Ward 2" on the map
  And I should see ward "Ward 3" on the map
  And I should see ward "Ward 4" on the map
  
Scenario: seeing each ward highlighted with its color
  Given I am on the home page
  Then I should see ward "Ward 1" highlighted with "red"
  And I should see ward "Ward 2" highlighted with "yellow"
  And I should see ward "Ward 3" highlighted with "green"
  And I should see ward "Ward 4" highlighted with "blue"
  
Feature: only RISHI member can view the internal committee pages
  
As a Project RISHI member
So that I can know every committee's progress
I want to see all the internal committee pages.

Background: Committees and users in database
  Given the following comittees exist:
    | name                |
    | Education           |
    | Rainwater Harvesting|
  
 
@external_test
Scenario: external viewer cannot see Education internal page
  Given I am logged in as an external user
  And I am on the Education committee page
  Then I should not see Education progress
 
@internal_test 
Scenario: RISHI member can see Education internal page
  Given I am logged in as an internal user
  And I am on the Education committee page
  Then I should see Education progress
  
@internal_test
Scenario: RISHI member can see Rainwater Harvesting internal page
  Given I am logged in as an internal user
  And I am on the Rainwater Harvesting committee page
  Then I should see Rainwater Harvesting progress
  

  
# Scenario: user cannot see Education internal page without login
#   Given I am not logged in
#   And I am on the Education committee page
#   Then I should not see Education progress
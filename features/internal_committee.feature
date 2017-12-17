Feature: RISHI member can add content to the internal committee pages
  
As a Project RISHI committee member
So that I can update others on our committee progress
I want to edit my committee page.

Background: Committees and users in database
  Given the following comittees exist:
    | name                |
    | Education           |
    | Rainwater Harvesting|
  
 #PivotalID: 152762222
 
# @external_test
# Scenario: Committee member can edit committee page
#   Given I am logged in as an external user
#   And I belong to the Education committee
#   And I am on the Education committee page
#   Then I should be able to edit the page
 
# @internal_test 
# Scenario: Committee member can not edit non committee page
#   Given I am logged in as an internal user
#   And I belong to the Rainwater Harvesting committee
#   And I am on the Education committee page
#   Then I should not be able to edit the page
  
Feature: external user can see a map of wards UC Berkeley Project RISHI serves

As an external viewer of the site on the homepage
I want to be able to see a map of the village UC Berkeley Project Rishi serves
So that I can see what area of India they are deployed in. 

Background: wards have been added to database
  
  Given the following wards exist:
  | name        |      
  | Ward 1      |
  | Ward 2      |
  | Ward 3      |
  | Ward 4      |
  
  Given the following coordinates exist:
  | ward_id | lat       | lng       |
  | 1       | 30.577421 | 77.504928 |
  | 2       | 30.683129 | 77.631935 |
  | 3       | 30.987524 | 77.313168 |
  | 4       | 30.806854 | 77.066531 |
  
# Scenario: seeing all the wards on the map
#   Given I am on the home page
#   Then I should see ward "Ward 1" on the map
#   And I should see ward "Ward 2" on the map
#   And I should see ward "Ward 3" on the map
#   And I should see ward "Ward 4" on the map

  
Feature: external user can see what committees belong to what wards

As an external viewer of the site on the homepage 
I want to be able to see the different committees on each ward that UC Berkeley Project Rishi serves 
So that I can learn which committees are involved with each ward

Background: Comittees in database

  Given the following comittees exist:
  | name               | ward_id   |
  | Ecological Indian  | 1         |
  | Corn, Bean, Squash | 1         |
  | Toxic Gumbo        | 2         |
  | Levees             | 2         |
  
# Scenario: Seeing the appropriate comittee under the associated wards
#     When I am on the home page
#     Given that I am an "External" user
#     Then the "Ecological Indian" committee has "1" as a ward id
#     And the "Toxic Gumbo" committee has "2" as a ward id

# Scenario: Seeing multiple committees for the same ward
#     When I am on the home page
#     Given that I am an "External" user
#     Then the "Toxic Gumbo" committee has "2" as a ward id 
#     And the "Levees" committee has "2" as a ward id

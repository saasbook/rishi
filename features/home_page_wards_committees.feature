Feature: external user can see what committees belong to what wards

As an external viewer of the site on the homepage 
I want to be able to see the different committees on each ward that UC Berkeley Project Rishi serves 
So that I can learn which committees are involved with each ward

Background: Comittees in database

  Given the following comittees exist:
  | name               | description     | ward          |
  | Ecological Indian  | describes WM    | 9th Ward      |
  | Corn, Bean, Squash | describes C,B,S | Fauborg Treme |
  | Toxic Gumbo        | describes TG    | Ponchatrain   |
  | Levees             | describes C,B,S | Fauborg Treme |
  
Scenario: Seeing the appropriate comittee under the associated wards
    When I go to the home page
    Given that I am an "External" user
    Then I should see "Ecological Indian" committee under "9th Ward" ward
    And I should see "Toxic Gumbo" committee under "Ponchatrain" ward

Scenario: Seeing multiple committees for the same ward
    When I go to the home page
    Given that I am an "External" user
    Then I should see "Corn, Bean, Squash" committee under "Fauborg Treme" ward 
    And I should see "Levees" committee under "Fauborg Treme" ward

Feature: a user can see see the travel page
 
As a viewer of the site
I want to be able to see the travel page
So that I can learn where the Project RISHI member went to service

Scenario: A user is able to go to the travel page
    Given I am on the home page
    When I follow "TRAVEL"
    Then I should be on the travel page
    
Scenario: Seeing the content on the travel page
    Given I am on the travel page
    Then I should see "Lorem ipsum dolor sit amet"

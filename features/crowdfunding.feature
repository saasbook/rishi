Feature: Provide access to crowdfunding links for external users.
  
  As an external viewer of the site on the homepage, 
  so that I can contribute financially to projects at Project Rishi, 
  I want to be able to contribute through a crowdfunding link.
  
Scenario: Accessible crowdfunding link
  When I follow "Link to GoFundMe!"
  Then I should be redirected to "GoFundMe"

Scenario: Change crowdfunding link
  Given I am an "executive member"
  When I press "Change crowdfunding link"
  Then I should be on the "Crowdfunding edit page"
 
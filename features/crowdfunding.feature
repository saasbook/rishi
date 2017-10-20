Feature: Provide levels of access to crowdfunding links for all users.
  
  As an external viewer of the site on the homepage, 
  so that I can contribute financially to projects at Project Rishi, 
  I want to be able to contribute through a crowdfunding link.
  
Scenario: Accessible crowdfunding link
  Given I am on the home page
  When I follow "Link to GoFundMe!"
  Then I should be redirected to the GoFundMe page

 
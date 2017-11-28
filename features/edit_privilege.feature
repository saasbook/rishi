#152761515
Feature: Provide editing capabilities to an executive Project Rishi member.
  
  As an executive Project Rishi member,
  so that I can edit markers involving wards and committees,
  I should have editing privileges with regards to markers.
  
Background: Wards, Committees, and Coordinates in database
  Given the following wards exist:
    | name   | ward_lat | ward_long |
    | Ward 1 | 30.62342 | 71.234123 |
    | Ward 2 | 31.52342 | 71.512341 |
  
  Given the following comittees exist:
    | name                |
    | Education           |
    | Rainwater Harvesting|


@internal_test 
Scenario: Inserting a marker
  Given I am logged in as an internal user
  And I am in the members page
  When I fill in "coordinate_latitude" with "31.13"
  When I press "markers_submit"
  Then I should see "31.13"

@internal_test 
Scenario: Deleting a marker
  Given I am logged in as an internal user
  And I am in the members page
  When I fill in "coordinate_latitude" with "31.13"
  When I press "markers_submit"
  When I press "delete_marker"
  Then I should not see "31.13"

@internal_test 
Scenario: Editing a marker's latitude
  Given I am logged in as an internal user
  And I am in the members page
  When I fill in "coordinate_latitude" with "31.13"
  When I press "markers_submit"
  And I follow "edit_marker"
  And I fill in "coordinate_lat" with "41.14"
  And I press "update_marker"
  Then I should not see "31.13"
  And I should see "41.14"

@internal_test 
Scenario: Editing a marker's longitude
  Given I am logged in as an internal user
  And I am in the members page
  When I fill in "coordinate_longitude" with "31.13"
  When I press "markers_submit"
  And I follow "edit_marker"
  And I fill in "coordinate_lng" with "41.14"
  And I press "update_marker"
  Then I should not see "31.13"
  And I should see "41.14"
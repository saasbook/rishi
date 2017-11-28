require "rack_session_access/capybara"

And /^I am in the members page/ do
    visit(members_path)
end

When /^I add a marker to "(.*)"/ do |marker_object|
    pending
end

Then /^"(.*)" should contain the marker in its coordinates/ do |marker_object|
    pending
end

When /^I delete a marker from "(.*)"/ do |marker_object|
    pending
end

Then /^"(.*)" should not contain the marker in its coordinates/ do |marker_object|
    pending
end

When /^I edit the latitude of a coordinate in "(.*)"/ do |marker_object|
    pending
end

Then /^that coordinate for "(.*)" should have an updated latitude on the map/ do |marker_object|
    pending
end

When /^I edit the longitude of a coordinate in "(.*)"/ do |marker_object|
    pending
end

Then /^that coordinate for "(.*)" should have an updated longitude on the map/ do |marker_object|
    pending
end


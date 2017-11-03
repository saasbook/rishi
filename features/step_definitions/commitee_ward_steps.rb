Given /the following comittees exist/ do |committee_table|
  committee_table.hashes.each do |committee|
    Committee.create(committee)
  end
end

Given /that I am an "(.*)" user/ do |member|
  page.driver.submit :delete, "/signout", {}
  page.should have_content("Sign in")
end

Then /the "(.*)" committee has "(.*)" as a ward id/ do |committee, ward|
  expect(Committee.find_by_name(committee).ward_id).to eq(ward.to_i)
end

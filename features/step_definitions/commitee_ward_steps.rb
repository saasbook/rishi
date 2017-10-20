Given /the following comittees exist/ do |committee_table|
  Committee.delete_all
  committee_table.hashes.each do |committee|
    Committee.create(committee)
  end
end

Given /that I am an "(.*)" user/ do |member|
  # Fill in once authentication is done.
  expect(true)
end

Then /the "(.*)" committee has "(.*)" as a ward id/ do |committee, ward|
  expect(Committee.find_by_name(committee).wards_id).to eq(ward.to_i)
end

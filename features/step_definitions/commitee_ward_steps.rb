Given /the following comittees exist/ do |committee_table|
  committee_table.hashes.each do |committee|
    Committee.create(committee)
  end
end

Given /that I am an "(.*)" user/ do |member|
  if member.eql? "External"
    step "I am not logged in"
  elsif member.eql? "Internal"
    step "I am logged in as an internal user"
  end
end

Then /the "(.*)" committee has "(.*)" as a ward id/ do |committee, ward|
  expect(Committee.find_by_name(committee).ward_id).to eq(ward.to_i)
end

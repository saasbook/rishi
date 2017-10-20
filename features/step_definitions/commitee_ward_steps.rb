Given /the following committees exist/ do |committee_table|
  Committee.delete_all
  committee_table.hashes.each do |committee|
    Committee.create(committee)
  end
end

Given /that I am an "(.*)" user/ do |member|
  
end

Then /I should see "(.*)" committee under "(.*)" ward/ do |commitee, ward|
  pending
end

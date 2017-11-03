Given /the following wards exist/ do |ward_table|
    ward_table.hashes.each do |ward|
        Ward.create(ward)
    end
end

Given /the following coordinates exist/ do |coord_table|
    coord_table.hashes.each do |coord|
        Coordinate.create(coord)
    end
end

Then /I should see ward "(.*)" on the map/ do |ward|
    bool = page.body.include?(ward)
    bool.should be(true)
end


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

Then /I should see ward "(.*)" highlighted with "(.*)"/ do |ward, color|
    puts(ward)
    expect(Ward.find_by_name(ward).color).to eq(color)
    #expect(true)
end
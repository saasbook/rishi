require "rails_helper"
require "database_cleaner"
DatabaseCleaner.strategy = :truncation

describe Ward do
    before(:each) do
        DatabaseCleaner.clean
        @ward_1 = FactoryGirl.create(:ward)
        @ward_2 = FactoryGirl.create(:ward)
        @coordinate_1 = FactoryGirl.create(:coordinate)
        @coordinate_2 = FactoryGirl.create(:coordinate, :lat => 30.987524, :lng => 77.313168)
        @coordinate_3 = FactoryGirl.create(:coordinate, :lat => 30.806854, :lng => 77.066531)
        @coordinate_4 = FactoryGirl.create(:coordinate, :lat => 30.577421, :lng => 77.504928)
        @ward_1.coordinates << [@coordinate_1, @coordinate_2, @coordinate_3, @coordinate_4]
    end
    describe ".build_ward_overlay" do
        it "returns a region with 1 ward" do
            @regions_1 = Ward.build_ward_overlay(@ward_1)
            expect(@regions_1.size).to eq(1)
        end
        it "returns an empty array when a ward has no coordinates" do
            @regions_2 = Ward.build_ward_overlay(@ward_2)
            expect(@regions_2.size).to eq(0)
        end
    end
    describe "two specs here" do
  it "passes" do
  end

  it "passes too" do
  end
end
end
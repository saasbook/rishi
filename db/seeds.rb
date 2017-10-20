# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ward_1 = Ward.create(name: "Ward 1")
ward_2 = Ward.create(name: "Ward 2")

Coordinate.create(ward_id: ward_1.id, lat: 30.577421, lng: 77.504928)
Coordinate.create(ward_id: ward_1.id, lat: 30.683129, lng: 77.631935)
Coordinate.create(ward_id: ward_1.id, lat: 30.987524, lng: 77.313168)
Coordinate.create(ward_id: ward_1.id, lat: 30.806854, lng: 77.066531)

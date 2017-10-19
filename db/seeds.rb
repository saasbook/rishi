# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

wards = Ward.create(name: 1, polygons: [[30.577421, 77.504928], [30.683129, 77.631935], [30.987524, 77.313168], [30.806854, 77.066531]])
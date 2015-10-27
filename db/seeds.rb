# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.create([
  { title: "The Importance of Being Ernest", author: "Ernest P. Worrel" },
  { title: "House of Leaves", author: "Mark Z. Danielewski"}
])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





  imageshare = Site.create(name: 'imageshare', fullName: 'Vigilant Medical')
  jhu = Site.create(name: 'jhu', fullName: 'Johns Hopkins University')
  ash = imageshare.users.create(name: "Ashish Dua" , admin: true, superAdmin: true)
  kyle = imageshare.users.create(name: "Kyle Fritz" , admin: true, superAdmin: true)
  bob = jhu.users.create(name: "Bob Smith" , admin: true, superAdmin: false)
  rock = jhu.users.create(name: "The Rock" , admin: false, superAdmin: false)
  up1 = imageshare.uploads.create(size: 50)
  up2 = imageshare.uploads.create(size: 70)
  up3 = jhu.uploads.create(size: 80)
  up4 = jhu.uploads.create(size: 90)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Subscription.delete_all
User.delete_all
Device.delete_all
Access.delete_all

# Create the subscriptions
puts "Creating subscriptions..."
netflix = Subscription.create(name: "Netflix")
itunes = Subscription.create(name: "iTunes")
nytimes = Subscription.create(name: "NYTimes")
vogue = Subscription.create(name: "Vogue")
linkedin = Subscription.create(name: "LinkedIn")

# Create the users
puts "Creating user..."
priyanka = User.create(login: "priyanka", familysharing: 0)
shashwat = User.create(login: "shashwat", familysharing: 1)
sehgal = User.create(login: "sehgal", familysharing: 1)

# Create the Devices
puts "Creating devices..."
iphone5 = Device.create(name: "iphone5")
ipad4 = Device.create(name: "iPad4")
appletv = Device.create(name: "appletv")
imac = Device.create(name: "iMac")
macair = Device.create(name: "MacAir")

puts "Creating relationship..."
Access.create(device_id: iphone5.id, subscription_id: itunes.id)
Access.create(device_id: iphone5.id, subscription_id: nytimes.id)
Access.create(device_id: ipad4.id, subscription_id: vogue.id)
Access.create(device_id: appletv.id, subscription_id: netflix.id)

puts "There are now #{Subscription.count} subscriptions, #{User.count} users, #{Device.count} devices, and #{Access.count} access mapping in the database."

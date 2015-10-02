# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..20).each do
	w = WorkPost.create(title: "#{Faker::Commerce.department} requires a worker in #{Faker::Address.state}",
					description: "#{Faker::Lorem.paragraph(2)}\nAddress: #{Faker::Address.street_address}")
	(1..2).each do
		Contact.create(info: "#{Faker::PhoneNumber.phone_number}", work_post_id: w.id)
	end
end
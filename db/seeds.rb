# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Manager.destroy_all
User.destroy_all
Item.destroy_all


Manager.create(email: "hahaha@gmail.com", password: "2wsx1qaz")
User.create(email: "123@gmail.com", password: "2wsx1qaz")
Item.create(name: "awsome", price: 10000, status: 0, cate_id: 1)

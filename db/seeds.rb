# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alice = User.find_or_create_by(name: "Alice")
bob = User.find_or_create_by(name: "Bob")
chris = User.find_or_create_by(name: "Chris")
darryl = User.find_or_create_by(name: "Darryl")

Convo.find_or_create_by(sender: alice, recipient: bob)
Convo.find_or_create_by(sender: chris, recipient: alice)
Convo.find_or_create_by(sender: darryl, recipient: alice)

Connect.find_or_create_by(requestor: alice, requestee: bob)
Connect.find_or_create_by(requestor: darryl, requestee: alice)

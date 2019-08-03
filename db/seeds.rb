# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = User.create({ username: "a", password: "a" })
b = User.create({ username: "b", password: "b" })
c = User.create({ username: "c", password: "c" })
d = User.create({ username: "d", password: "d" })
e = User.create({ username: "e", password: "e" })

Message.create({ body: "Hi my name is a", user: a })
Message.create({ body: "Hi my name is b", user: b })
Message.create({ body: "Hi my name is c", user: c })
Message.create({ body: "Hi my name is d", user: d })
Message.create({ body: "Hi my name is e", user: e })

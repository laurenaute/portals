# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Universe.create(
  theme: "Star Wars",
  description: "A long time ago in a galaxy far, far away...",
  parameters: "The Force is strong in this one."
)
puts "Created a universe"

Character.create(
  description: "A young Jedi, trained by Obi-Wan Kenobi, who was a friend of his father, Anakin Skywalker.",
  parameters: "The Force is strong in this one.",
  universe_id: 1,
  strength: 10,
  dexterity: 10,
  constitution: 10,
  intelligence: 10,
  wisdom: 10,
  charisma: 10
)
puts "Created a character"

User.create(
  email: "test@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)
puts "Created a user"

Adventure.create(
  character_id: 1,
  character_name: "Luke Skywalker",
  difficulty: "Easy",
  choices: true,
  save_adventure: "You have chosen the path of the Jedi.",
  user_id: 1
)
puts "Created an adventure"

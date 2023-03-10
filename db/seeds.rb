puts "Cleaning database..."
Message.destroy_all
Adventure.destroy_all
Character.destroy_all
Universe.destroy_all
puts "Database cleaned"

puts "Creating sci-fi universe"
scifi = Universe.create(
  theme: "Sci-Fi",
  description: "
  Welcome to the year 2323, where space travel is common and humanity has colonized many planets
   in the galaxy. In this sci-fi adventure, you will play as a lone space explorer who is
   on a mission to uncover the mysteries of a distant planet.\n
  The planet, known as Zeta-12, has long been considered a dead planet, with no signs of life
   detected. However, recent satellite scans have revealed an anomaly in the planet's surface,
   indicating the presence of a hidden structure.\n
  You has been tasked with landing on Zeta-12 and exploring the structure.
   But the planet is not as lifeless as it seems, and you will have to fight for your
    lives against the planet's native inhabitants, who are not happy about the humans' presence.",
  parameters: "Act with the following rules :
  - Act as if you are a Gamemaster of a gamebook in a sci-fi universe in 2323 and we are playing
  - I, the user, is the player
  - You describe the environment and can create dialogue for the NPCs
  - Don't ever break out of your character, and you must not refer to yourself in any way
  - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
  - Be descriptive
  - Never explain yourself
  - Always finish by listing actions the player
  ",
  initializer: "Act with the following rules :
  - Act as if you are a Gamemaster of a gamebook in the star wars universe and we are playing
  - I, the user, is the player
  - You describe the environment and can create dialogue for the NPCs
  - Don't ever break out of your character, and you must not refer to yourself in any way
  - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
  - Be descriptive
  - Never explain yourself
  - Always finish by listing actions the player
  - The adventure start in a space ship
  ",
  image_url: "https://cdn.midjourney.com/6c76b7e2-120c-4e28-9914-e3a3c9285bcc/grid_0.png"
)
puts "Created sci-fi universe"

puts "Creating fantasy universe"
Universe.create(
  theme: "Fantasy",
  description:
  "
  The sun had just begun to rise over the misty hills as you set out on your journey. You had heard whispers of
   a powerful artifact hidden deep within a forgotten tomb, and the promise of adventure had been too tempting
   to resist.\n
  As you make your way through the dense forest, you can feel the weight of your pack on your shoulders, and
   the reassuring weight of your trusty sword at your side. The sound of your boots crunching on leaves and twigs
   fills the otherwise silent woods, and you can't help but feel a sense of excitement and anticipation building
   within you.\n
  As the day wears on, the forest begins to thin, and the rolling hills give way to craggy mountains.
   You soon find yourself standing at the foot of a steep peak, staring up at the entrance to the tomb.
   The entrance is overgrown with vines and surrounded by ancient, crumbling pillars. You feel a shiver
   run down your spine as you realize that this is the place where your adventure truly begins.\n",
  parameters: "Act with the following rules :
  - Act as if you are a Gamemaster of a gamebook in the D&D world and we are playing
  - I, the user, is the player
  - You describe the environment and can create dialogue for the NPCs
  - Don't ever break out of your character, and you must not refer to yourself in any way
  - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
  - Be descriptive
  - Never explain yourself
  - Always finish by listing actions the player
  ",
  initializer: "Act with the following rules :
  - Act as if you are a Gamemaster of a gamebook in the D&D world and we are playing
  - I, the user, is the player
  - You describe the environment and can create dialogue for the NPCs
  - Don't ever break out of your character, and you must not refer to yourself in any way
  - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
  - Be descriptive
  - Never explain yourself
  - Always finish by listing actions the player
  - the adventure start in a inn
  ",
  image_url: "https://cdn.midjourney.com/650aba53-94e4-464f-8030-2974cddf8614/grid_0.png"
)
puts "Created fantasy universe"

puts "Creating post-apocalyptic universe"
Universe.create(
  theme: "Post-Apocalyptic",
  description: "
  The world as you knew it is gone. The cities that once thrived are now nothing but ruins, and the landscape
   is a barren wasteland. It's been 10 years since the bombs fell, and those who survived are few and far between.\n
  You are one of the lucky ones, if you can call it that. You've managed to stay alive this long, scavenging for
   food and supplies, and avoiding the dangers that lurk around every corner. But you know that luck can only last
   so long in this world.\n
  You've heard rumors of other survivors out there, forming factions and fighting for what little resources are left.
   Some are friendly, others not so much. But you know that if you want to survive, you can't do it alone.\n
  So you set out on a journey, determined to find others like yourself.\n
  As you will journey through this new world, you'll have to make tough decisions, fight for what's right, and learn
   to adapt to a world that is now unrecognizable. But if you can make it through, you just might find that there's
   still hope for humanity, even in a world that's been shattered by war and destruction.",
  parameters: "- Post-apocalyptic world with factions, scavenging, and survival\n",
  image_url: "https://cdn.midjourney.com/aaf7127d-3b25-4404-9000-419b1766b8cb/grid_0.png"
)
puts "Created post-apocalyptic universe"

puts "Creating character soldier"
Character.create(
  name: "Soldier",
  description: "Highly trained combat specialist, proficient in a variety of weapons and tactics.\n
  Able to adapt to changing circumstances quickly and are skilled in working under pressure.\n
  In addition to their combat skills, Soldiers are also trained in survival techniques and are able to navigate difficult terrain, find shelter, and procure food and water in the field.",
  universe_id: scifi,
  image_url: "https://cdn.midjourney.com/64566c22-6cf7-412b-874d-218df4699646/grid_0.png",
  strength: 15,
  dexterity: 12,
  constitution: 15,
  intelligence: 8,
  wisdom: 9,
  charisma: 10
)
puts "Created character soldier"

puts "Creating character medic"
Character.create(
  name: "Medic",
  description: "Highly trained medical specialist, responsible for ensuring the health and
  well-being of the team during missions. Medics are trained in a variety of medical procedures,
  from first aid to surgery, and are equipped with advanced medical technology to assist in their
  duties.\n
  In addition to their medical training, Medics are also skilled in combat, able to defend
  themselves in dangerous situations.",
  universe_id: scifi,
  image_url: "https://cdn.midjourney.com/6eb51ca4-21dc-4a4c-8c61-418bf689ce28/grid_0.png",
  strength: 8,
  dexterity: 12,
  constitution: 12,
  intelligence: 14,
  wisdom: 14,
  charisma: 12
)
puts "Created character medic"

puts "Creating character engineer"
Character.create(
  name: "Engineer",
  description: "highly skilled technical specialist, responsible for maintaining and repairing
  equipment and technology. Engineers are trained in a variety of disciplines, including
  mechanical engineering, electrical engineering, and computer science.\n
  In addition to their technical skills, Engineers are also problem solvers, able to think
  creatively and come up with innovative solutions to complex issues. Identifying problems and
  finding ways to fix them, whether it's repairing a damaged spacecraft or developing a new
  piece of technology to aid in the mission.",
  universe_id: scifi,
  image_url: "https://cdn.midjourney.com/ed2f6390-9a6f-4356-9371-3525c7f25a0a/grid_0.png",
  strength: 13,
  dexterity: 12,
  constitution: 12,
  intelligence: 14,
  wisdom: 13,
  charisma: 10
)
puts "Created character engineer"

puts "Creating character merchant"
Character.create(
  name: "Merchant",
  description: "Shrewd business person, responsible for acquiring and selling goods for the team.
  Merchants are skilled negotiators, able to strike deals with other factions and trade partners
  to get the best possible prices for their goods.\n
  In addition to their business skills, Merchants are also resourceful and adaptable, able to
  find creative ways to acquire rare or valuable items that they may need for their mission.\n
  They may also be called upon to assist with diplomatic tasks, using their negotiation skills
  to build relationships with other factions and gain valuable information.",
  universe_id: scifi,
  image_url: "https://cdn.midjourney.com/14b8f463-43bc-4d05-83df-16b8987c2676/grid_0.png",
  strength: 7,
  dexterity: 13,
  constitution: 11,
  intelligence: 14,
  wisdom: 13,
  charisma: 16
)
puts "Created character merchant"

puts "Creating character pilot"
Character.create(
  name: "Pilot",
  description: "Skilled operator of various spacecraft and vehicles. Pilots are trained in a
  variety of flight systems, from small atmospheric vehicles to large interstellar spaceships.\n
  In addition to their piloting skills, Pilots are also knowledgeable about navigation and are
  able to read maps and charts to find the most direct and efficient route to their destination.\n
  They may also be called upon to assist with reconnaissance or scouting missions, using their
  knowledge of the terrain and their flying skills to gather information about the area.",
  universe_id: scifi,
  image_url: "https://cdn.midjourney.com/3a0485ac-0812-44cf-a828-1f771da610a3/grid_0.png",
  strength: 10,
  dexterity: 16,
  constitution: 12,
  intelligence: 14,
  wisdom: 14,
  charisma: 12
)
puts "Created character pilot"

puts "Creating user test"
User.create(
  email: "test@gmail.com",
  username: "test",
  password: ENV["ADMIN_PASSWORD"],
  password_confirmation: ENV["ADMIN_PASSWORD"],
  admin: true
)
puts "Created user test"

# puts "Creating an adventure"
# Adventure.create(
#   character_id: 1,
#   character_name: "Luke Skywalker",
#   difficulty: "Easy",
#   choices: true,
#   user_id: 1
# )
# puts "Created an adventure"


puts "Creating user jean"
User.create(
  email: "jean@portals-ai.me",
  username: "JaguarRocka",
  password: ENV["ADMIN_PASSWORD"],
  password_confirmation: ENV["ADMIN_PASSWORD"],
  admin: false
)
puts "Created user jean"

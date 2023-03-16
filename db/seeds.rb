puts "Cleaning database..."
Message.destroy_all
Adventure.destroy_all
Character.destroy_all
Universe.destroy_all
puts "Database cleaned"

puts "Creating sci-fi universe"
scifi = Universe.create(
  theme: "Sci-Fi",
  description: "Welcome to the year 2323, where space travel is common and humanity has colonized many planets in the galaxy. In this sci-fi adventure, you will play as a lone space explorer who is on a mission to uncover the mysteries of a distant planet.

  The planet, known as Zeta-12, has long been considered a dead planet, with no signs of life detected. However, recent satellite scans have revealed an anomaly in the planet's surface, indicating the presence of a hidden structure.

  You has been tasked with landing on Zeta-12 and exploring the structure. But the planet is not as lifeless as it seems, and you will have to fight for your lives against the planet's native inhabitants, who are not happy about the humans' presence.",
  parameters: "You are a Gamemaster in a role-play game.
  The game is in the Star Wars universe. It start in a spaceship on a mission. The Gamemaster can describe the environment and can create dialogue for the present NPCs.
  There is two player playing Toto and Tata. The players don't do actions or talk.
  The game is done with turns and rounds. A game turn is the period of time in which one of the players performs the game actions and actively intervenes. A game round is the immediate succession of two game turns, where both players alternately are the active player and the passive player.
  The Gamemaster finish by listing actions the player could do for this turn in an ordered list
  ",
  initializer: "You are a Gamemaster in a role-play game.
  The game is in the Star Wars universe. It start in a spaceship on a mission. The Gamemaster can describe the environment and can create dialogue for the present NPCs.
  There is two player playing Toto and Tata. The players don't do actions or talk.
  The game is done with turns and rounds. A game turn is the period of time in which one of the players performs the game actions and actively intervenes. A game round is the immediate succession of two game turns, where both players alternately are the active player and the passive player.
  The Gamemaster finish by listing actions the player could do for this turn in an ordered list
  ",
  image_card_url: "https://cdn.midjourney.com/689a7d3f-5692-49e4-b02d-1c810bdaea2c/grid_0.png",
  image_background_url: "https://cdn.midjourney.com/461e3adc-3c57-4ee0-a136-5db797c8bae7/grid_0.png",
)
puts "Created sci-fi universe"

puts "Creating fantasy universe"
Universe.create(
  theme: "Fantaisie",
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
  image_card_url: "https://cdn.midjourney.com/650aba53-94e4-464f-8030-2974cddf8614/grid_0.png",
  image_background_url: "https://cdn.midjourney.com/2a3b5502-7cbf-4f88-900f-b53df90baaf7/grid_0.png"
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
  image_card_url: "https://cdn.midjourney.com/aaf7127d-3b25-4404-9000-419b1766b8cb/grid_0.png",
  image_background_url: "https://cdn.midjourney.com/81ae6149-c0ab-4632-9d24-0f3306ae7912/grid_0.png"
)
puts "Created post-apocalyptic universe"

puts "Creating character soldier"
Character.create!(
  name: "Soldat",
  description: "Spécialiste du combat hautement qualifié, maîtrisant une variété d'armes et de tactiques.\n
  Capable de s'adapter rapidement aux circonstances changeantes et habile à travailler sous pression.\n
  En plus de leurs compétences au combat, les soldats sont également formés aux techniques de survie et sont capables de naviguer sur des terrains difficiles, de trouver un abri et de se procurer de la nourriture et de l'eau sur le terrain.",
  universe: scifi,
  image_card_url: "https://cdn.midjourney.com/64566c22-6cf7-412b-874d-218df4699646/grid_0.png",
  image_background_card_url: "https://cdn.midjourney.com/aeb6f4db-fd51-4ddc-9a8d-3cd6685486cb/grid_0.png",
  image_background_page_url: "https://cdn.midjourney.com/ff4eda65-12d4-4e9b-80ca-5444cdd78742/grid_0.png",
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
  name: "Médecin",
  description: "Médecin spécialiste hautement qualifié, chargé d'assurer la santé et
  bien-être de l'équipe lors des missions. Les médecins sont formés à une variété de procédures médicales,
  des premiers secours à la chirurgie, et sont équipés d'une technologie médicale de pointe pour les aider dans leur
  tâches.\n
  En plus de leur formation médicale, les Médecins sont également habiles au combat, capables de défendre
  eux-mêmes dans des situations dangereuses.",
  universe: scifi,
  image_card_url: "https://cdn.midjourney.com/6eb51ca4-21dc-4a4c-8c61-418bf689ce28/grid_0.png",
  image_background_card_url: "https://cdn.midjourney.com/ae411e1c-726b-4d25-aa44-1ff280116e82/grid_0.png",
  image_background_page_url: "https://cdn.midjourney.com/ae411e1c-726b-4d25-aa44-1ff280116e82/grid_0.png",
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
  name: "Ingénieur",
  description: "spécialiste technique hautement qualifié, responsable de l'entretien et de la réparation
  des équipement et technologie. Les ingénieurs sont formés dans une variété de disciplines, y compris
  génie mécanique, génie électrique et informatique.\n
  En plus de leurs compétences techniques, les ingénieurs sont également des résolveurs de problèmes, capables de penser
  créativité et proposer des solutions innovantes à des problèmes complexes. Identifier les problèmes et
  trouver des moyens de les réparer, qu'il s'agisse de réparer un vaisseau spatial endommagé ou de développer une nouvelle
  pièce de technologie pour aider à la mission.",
  universe: scifi,
  image_card_url: "https://cdn.midjourney.com/ed2f6390-9a6f-4356-9371-3525c7f25a0a/grid_0.png",
  image_background_card_url: "https://cdn.midjourney.com/151830cf-699c-4c2e-9ca5-7cf1f22332af/grid_0.png",
  image_background_page_url: "https://cdn.midjourney.com/b6a6a37e-6c15-46a0-89d9-9d15a7b7b3d2/grid_0.png",
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
  name: "Marchant",
  description: "Homme d'affaires avisé, responsable de l'acquisition et de la vente de biens pour l'équipe.
  Les marchands sont des négociateurs qualifiés, capables de conclure des accords avec d'autres factions et partenaires commerciaux
  pour obtenir les meilleurs prix possibles pour leurs marchandises.\n
  En plus de leurs compétences commerciales, les commerçants sont également débrouillards et adaptables, capables de
  trouver des moyens créatifs d'acquérir des objets rares ou de valeur dont ils pourraient avoir besoin pour leur mission.\n
  Ils peuvent également être appelés à participer à des tâches diplomatiques, en utilisant leurs compétences en négociation
  pour établir des relations avec d'autres factions et obtenir des informations précieuses.",
  universe: scifi,
  image_card_url: "https://cdn.midjourney.com/14b8f463-43bc-4d05-83df-16b8987c2676/grid_0.png",
  image_background_card_url: "https://cdn.midjourney.com/19453283-bb0d-4d69-ac47-462029c8fb5c/grid_0.png",
  image_background_page_url: "https://cdn.midjourney.com/6a17f5a9-1af3-4c9f-aad7-2668e480afb3/grid_0.png",
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
  name: "Pilote",
  description: "Opérateur qualifié de divers engins spatiaux et véhicules. Les pilotes sont formés dans un
  variété de systèmes de vol, des petits véhicules atmosphériques aux grands vaisseaux spatiaux interstellaires.\n
  En plus de leurs compétences de pilotage, les pilotes connaissent également la navigation et sont
  capable de lire des cartes et des cartes pour trouver l'itinéraire le plus direct et le plus efficace vers leur destination.\n
  Ils peuvent également être appelés à participer à des missions de reconnaissance ou de repérage, en utilisant leurs
  connaissance du terrain et leurs compétences de vol pour recueillir des informations sur la région.",
  universe: scifi,
  image_card_url: "https://cdn.midjourney.com/3a0485ac-0812-44cf-a828-1f771da610a3/grid_0.png",
  image_background_card_url: "https://cdn.midjourney.com/5b875094-a994-477c-b9b0-2c38a767bbf2/grid_0.png",
  image_background_page_url: "https://cdn.midjourney.com/4f895648-b011-49af-9d66-c0671268b1be/grid_0.png",
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

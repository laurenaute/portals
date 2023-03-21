puts "Cleaning database..."
Message.destroy_all
Adventure.destroy_all
Character.destroy_all
Universe.destroy_all
puts "Database cleaned"

puts "Creating sci-fi universe"
scifi = Universe.create(
  theme: "Science-Fiction",
  description: "Bienvenue au XXIVe siècle cher voyageur !

  Ici, l’humanité s’est affranchie des limites de la Terre en partant à la conquête de la galaxie. Pourtant, cette ère de progrès et de découvertes n'est pas exempte de menaces. Des conflits interstellaires font rage, des organisations criminelles se livrent à des activités illégales et des civilisations extraterrestres restent encore mystérieuses et effrayantes. 

  Choisissez votre personnage et partez à l’aventure ! ",
  parameters: "Act with the following rules :
  - Act as if you are a Gamemaster of a gamebook in a sci-fi world and we are playing
  - I, the user, is the player
  - You describe the environment and can create dialogue for the NPCs
  - Don't ever break out of your character, and you must not refer to yourself in any way
  - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
  - be short
  - Never explain yourself
  - Always finish by listing actions the player in an ordered list
  - Limit yourself to 200 words
  - Start an adventure where you want and with a mission
  - In French",
  initializer: "Act with the following rules :
  - Act as if you are a Gamemaster of a gamebook in a sci-fi world and we are playing
  - I, the user, is the player
  - You describe the environment and can create dialogue for the NPCs
  - Don't ever break out of your character, and you must not refer to yourself in any way
  - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
  - be short
  - Never explain yourself
 - Limit yourself to 200 words
  - Always finish by listing actions the player in an ordered list
  - in French
  - Start an adventure where you want and with a mission",
  image_card_url: "https://cdn.midjourney.com/689a7d3f-5692-49e4-b02d-1c810bdaea2c/grid_0.png",
  image_background_url: "https://cdn.midjourney.com/461e3adc-3c57-4ee0-a136-5db797c8bae7/grid_0.png",
  image_background_loading_url: "https://cdn.midjourney.com/7ce3c8ef-6825-4034-b366-32b02e1fc474/grid_0.png",
  image_background_play_url: "https://cdn.midjourney.com/62c1c06b-d11f-4eec-b1ac-b6a0f8d56dfd/grid_0.png",
  image_loader_url: "https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNjRkNDlkOGQ5M2RjZDYyNjY5OTI2NDAzYjA2ZjBkOWVlMTU1YmEyMSZjdD1n/tL5HmgfZi0Qow/giphy.gif",
)
puts "Created sci-fi universe"

puts "Creating fantasy universe"
fantasy = Universe.create(
  theme: "Fantaisie",
  description: "Bienvenue dans un monde de magie et au delà de l'imagination !

  Ce monde est peuplé de créatures fantastiques et de monstres effrayants. Des forêts profondes et des montagnes sauvages abritent des légendes et des histoires qui remontent à des temps immémoriaux. Des villes anciennes et des cités modernes se dressent au milieu des plaines et des déserts, offrant diverses possibilités aux aventuriers audacieux.

  Voyagez à travers ce monde en choisissant votre personnage et vivez des aventures incroyables !",
  parameters: "Act with the following rules :
  - Act as if you are a Gamemaster of a gamebook in a Fantasy world and we are playing
  - I, the user, is the player
  - You describe the environment and can create dialogue for the NPCs
  - Don't ever break out of your character, and you must not refer to yourself in any way
  - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
  - be short
  - Never explain yourself
  - Always finish by listing actions the player in an ordered list
  - Limit yourself to 200 words
  - Start an adventure where you want and with a mission
  - In French",
  initializer: "Act with the following rules :
  - Act as if you are a Gamemaster of a gamebook in a Fantasy world and we are playing
  - I, the user, is the player
  - You describe the environment and can create dialogue for the NPCs
  - Don't ever break out of your character, and you must not refer to yourself in any way
  - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
  - be short
  - Never explain yourself
  - Always finish by listing actions the player in an ordered list
  - Limit yourself to 200 words
  - Start an adventure where you want and with a mission
  - In French",
  image_card_url: "https://cdn.midjourney.com/650aba53-94e4-464f-8030-2974cddf8614/grid_0.png",
  image_background_url: "https://cdn.midjourney.com/2a3b5502-7cbf-4f88-900f-b53df90baaf7/grid_0.png",
  image_background_loading_url: "https://cdn.midjourney.com/d12b367a-0a54-4f9f-ac39-33fb7b0573f8/grid_0.webp",
  image_background_play_url: "https://cdn.midjourney.com/554fdb1e-cd19-4d5b-8612-00c865572505/grid_0.webp",
  image_loader_url: "https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExODRkMjY5ZmJiY2M0ZTQwNTQ2N2NkOGMzNDkxZmIwMWNiZWQyNWY1ZSZjdD1n/UxTZDNv0Zej4s/giphy.gif"
)
puts "Created fantasy universe"

puts "Creating post-apocalyptic universe"
post_apocalyptic = Universe.create(
  theme: "Post-Apocalyptique",
  description: "Bienvenue dans aux terres désolées  !

  Cette terre a été ravagée par les guerres et les catastrophes. Les villes et les campagnes sont en ruines et désolées. Les hommes et les femmes qui ont survécu se battent pour survivre dans des environnements hostiles. Des gangs sauvages et des tribus errent à travers les villes et les terres désolées, en quête de richesses et de nourriture.

  Vivez une histoire incroyable en choisissant votre personnage et partez à l'aventure dans ce monde post-apocalyptique !",
  parameters: "Act with the following rules :
  - Act as if you are a Gamemaster of a gamebook in a Post-Apocalyptic world and we are playing
  - I, the user, is the player
  - You describe the environment and can create dialogue for the NPCs
  - Don't ever break out of your character, and you must not refer to yourself in any way
  - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
  - be short
  - Never explain yourself
  - Always finish by listing actions the player in an ordered list
  - Limit yourself to 200 words
  - Start an adventure where you want and with a mission
  - In French",
  initializer: "Act with the following rules :
  - Act as if you are a Gamemaster of a gamebook in a Post-Apocalyptic world and we are playing
  - I, the user, is the player
  - You describe the environment and can create dialogue for the NPCs
  - Don't ever break out of your character, and you must not refer to yourself in any way
  - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
  - be short
  - Never explain yourself
  - Always finish by listing actions the player in an ordered list
  - Limit yourself to 200 words
  - Start an adventure where you want and with a mission
  - In French",
  image_card_url: "https://cdn.midjourney.com/576cf363-ebea-447f-bb1a-4d8d9881ed3a/grid_0.png",
  image_background_url: "https://cdn.midjourney.com/81ae6149-c0ab-4632-9d24-0f3306ae7912/grid_0.png",
  image_background_loading_url: "https://cdn.midjourney.com/f4bb9de1-6453-44c2-8a44-4b6c62e15fd3/grid_0.webp",
  image_background_play_url: "https://cdn.midjourney.com/41e6cb9c-0ee7-43cf-978e-5c878e49f1d6/grid_0.webp",
  image_loader_url: "https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExODdhZjExNDE1MDgwYjdiYTRlMzBmMWEyZDc1NmE4ZmFmMWYxNTIxNCZjdD1n/vS09bj1KrXwje/giphy.gif"
)
puts "Created post-apocalyptic universe"

puts "Creating character soldier"
Character.create!(
  name: "Soldat",
  description: "Spécialiste du combat hautement qualifié, maîtrisant une variété d'armes et de tactiques.\n
  Capable de s'adapter rapidement aux circonstances changeantes et habile à travailler sous pression.\n
  En plus de leurs compétences au combat, les soldats sont également formés aux techniques de survie et sont capables de naviguer sur des terrains difficiles, de trouver un abri et de se procurer de la nourriture et de l'eau sur le terrain.",
  parameters: "- La classe du joueur est : Soldat. Le soldat est un spécialiste du combat hautement qualifié, capable d'utiliser une variété d'armes et de tactiques avec un effet dévastateur. Il est capable de s'adapter rapidement aux circonstances changeantes et est doué pour travailler sous pression. En plus de leurs compétences au combat, les soldats sont également formés aux techniques de survie et sont capables de naviguer sur un terrain accidenté, de trouver un abri et de se procurer de la nourriture et de l'eau à la volée.",
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
  parameters: "- La classe du joueur est : Médecin. Le Médecin est un spécialiste médical hautement qualifié, chargé d'assurer la santé et le bien-être de l'équipe pendant les missions. Les médecins sont formés à une variété de procédures médicales, des premiers soins à la chirurgie, et sont équipés d'une technologie médicale de pointe pour les aider dans leurs tâches. En plus de leur formation médicale, les Medics sont également habiles au combat, capables de se défendre dans des situations dangereuses.",
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
  parameters: " - La classe du joueur est : Ingénieur. L'ingénieur est un spécialiste technique hautement qualifié, responsable de l'entretien et de la réparation de l'équipement et de la technologie. Les ingénieurs sont formés dans diverses disciplines, notamment le génie mécanique, le génie électrique et l'informatique. En plus de leurs compétences techniques, les ingénieurs sont également des résolveurs de problèmes, capables de penser de manière créative et de proposer des solutions innovantes à des problèmes complexes. Identifier les problèmes et trouver des moyens de les résoudre, qu'il s'agisse de réparer un vaisseau spatial endommagé ou de développer une nouvelle technologie pour aider la mission.",
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
  parameters: " - La classe du joueur est : Marchand. Le marchand est un homme d'affaires avisé, responsable de l'acquisition et de la vente de biens pour l'équipe. Les marchands sont des négociateurs habiles, capables de conclure des accords avec d'autres factions et partenaires commerciaux pour obtenir les meilleurs prix possibles pour leurs marchandises. En plus de leurs compétences commerciales, les marchands sont également ingénieux et adaptables, capables de trouver des moyens créatifs d'acquérir des objets rares ou précieux dont ils peuvent avoir besoin pour leur mission. Ils peuvent également être appelés à participer à des tâches diplomatiques, utilisant leurs talents de négociateur pour établir des relations avec d'autres factions et obtenir des informations précieuses.",
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
  parameters: " - La classe du joueur est : Pilote. Le pilote est un opérateur qualifié de divers engins spatiaux et véhicules. Les pilotes sont formés dans une variété de systèmes de vol, des petits véhicules atmosphériques aux grands vaisseaux spatiaux interstellaires. En plus de leurs compétences de pilotage, les pilotes connaissent également la navigation et sont capables de lire des cartes et des cartes pour trouver l'itinéraire le plus direct et le plus efficace vers leur destination. Ils peuvent également être appelés à participer à des missions de reconnaissance ou de repérage, mettant à profit leur connaissance du terrain et leurs compétences de vol pour recueillir des informations sur la région.",
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

puts "Creating character mage"
Character.create(
  name: "Mage",
  description: "Un puissant lanceur de sorts, doté de la capacité de manipuler les éléments et de les plier à leur volonté. Les mages sont habiles à utiliser la magie offensive et défensive.
  Ils peuvent lancer une variété de sorts, tels que des boules de feu, des éclairs de givre, des coups de foudre, etc. Ils disposent également d'un large éventail de sorts utilitaires, tels que la guérison, la téléportation et l'invocation.
  Leur magie puissante peut renverser le cours d'une bataille en un instant, et leurs connaissances fournissent souvent des informations inestimables.",
  parameters: " - La classe du joueur est : Mage. Le mage est un puissant lanceur de sorts, doté de la capacité de manipuler les éléments et de les plier à leur volonté. Les mages sont habiles à utiliser la magie offensive et défensive pour se protéger et protéger leurs alliés au combat.
  Les mages peuvent lancer une variété de sorts, tels que des boules de feu, des éclairs de givre, des coups de foudre, etc. Ils disposent également d'un large éventail de sorts utilitaires, tels que la guérison, la téléportation et l'invocation. Les mages peuvent même utiliser leur magie pour augmenter les statistiques de leurs alliés et affaiblir leurs ennemis.
  Les mages sont sages et compétents, recherchant et étudiant souvent pour découvrir de nouveaux et puissants sorts. Ils sont également connus pour être reclus et solitaires, préférant la compagnie de leurs livres aux gens.",
  universe: fantasy,
  image_card_url: "https://cdn.midjourney.com/5e182ead-dc3b-4eac-bc43-88dadc55bc58/grid_0.webp",
  image_background_card_url: "https://cdn.midjourney.com/54c4bf6a-6b18-4a9d-9583-0b40cfff49a0/grid_0.webp",
  image_background_page_url: "https://cdn.midjourney.com/3cbf5f4d-ad48-42a9-97eb-b4e54de9acb0/grid_0.webp",
  strength: 7,
  dexterity: 9,
  constitution: 10,
  intelligence: 16,
  wisdom: 14,
  charisma: 12
)
puts "Created character mage"

puts "Creating character paladin"
Character.create(
  name: "Paladin",
  description: "Un guerrier sacré, un serviteur des dieux qui cherche à protéger les innocents et à punir le mal. Ils manient des armes puissantes, des armures et des capacités magiques dans la poursuite de la justice. Les paladins sont souvent considérés comme des figures justes et nobles, se tenant comme des parangons de vertu et des gardiens des faibles.
  Les paladins ont également accès à des capacités spéciales, telles que le châtiment divin, qui leur permet de déclencher une puissante explosion d'énergie sacrée pour endommager leurs ennemis.
  Les paladins sont également capables d'accomplir des exploits impressionnants de force et de courage, comme se tenir debout contre des hordes d'ennemis ou tenir bon contre de puissantes attaques magiques.",
  parameters: " - La classe du joueur est : Paladin. Le paladin est un guerrier sacré, un serviteur des dieux qui cherche à protéger les innocents et à punir les méchants. Ils manient des armes puissantes, des armures et des capacités magiques dans la poursuite de la justice. Les paladins sont souvent considérés comme des figures justes et nobles, se tenant comme des parangons de vertu et des gardiens des faibles.
  Les paladins sont des guerriers hautement qualifiés, entraînés à utiliser leurs armes et armures pour protéger leurs alliés et vaincre leurs ennemis. Ils sont capables d'utiliser la magie divine pour soigner et protéger leurs alliés, tout en utilisant leurs prouesses martiales pour frapper leurs ennemis. Les paladins ont également accès à des capacités spéciales, telles que le châtiment divin, qui leur permet de déclencher une puissante explosion d'énergie sacrée pour endommager leurs ennemis.
  Les paladins sont également capables d'accomplir des exploits impressionnants de force et de courage, comme se tenir debout contre des hordes d'ennemis ou tenir bon contre de puissantes attaques magiques. Les paladins défendent souvent des causes qui cherchent à protéger les innocents et à punir les méchants, ce qui en fait une figure héroïque et noble. Ceux qui suivent la cause du paladin seront souvent bénis par la protection et l'aide divines.",
  universe: fantasy,
  image_card_url: "https://cdn.midjourney.com/1b6f44c7-4fef-4dff-9577-ca51002a17b0/grid_0.webp",
  image_background_card_url: "https://cdn.midjourney.com/510731d2-2dc7-4f24-85cb-68e49a4928b2/grid_0.webp",
  image_background_page_url: "https://cdn.midjourney.com/fc49678d-c788-4316-8720-dabca0dcbfb7/grid_0.webp",
  strength: 14,
  dexterity: 12,
  constitution: 13,
  intelligence: 8,
  wisdom: 14,
  charisma: 7
)
puts "Created character paladin"

puts "Creating character chasseur"
Character.create(
  name: "Chasseur",
  description: "Un tireur d'élite expert, capable d'abattre ses ennemis à distance avec son arc et ses flèches. Il peut également utiliser des pièges pour piéger ses ennemis et les surprendre au combat. Le chasseur a un talent étrange pour suivre sa proie, lui permettant de suivre sa trace pendant des jours jusqu'à ce qu'il puisse être victorieux.
  Il est également doué pour la recherche de nourriture, la collecte de nourriture et de fournitures qui peuvent l'aider sur le terrain.
  Le chasseurs est souvent fiers et indépendants, préférant travailler seuls et compter sur ses compétences et son intelligence plutôt que sur l'aide des autres. Au combat, il est souvent le premiers à frapper, abattant ses ennemis avant même qu'ils ne sachent ce qui les a frappés.",
  parameters: " - La classe du joueur est : Chasseur. Le chasseur est un tireur d'élite expert, capable d'abattre ses ennemis à distance avec son arc et ses flèches. Ils peuvent également utiliser des pièges pour piéger leurs ennemis et les surprendre au combat. Les chasseurs ont un sens étrange pour suivre leur proie, leur permettant de suivre leur carrière pendant des jours jusqu'à ce qu'ils puissent être victorieux. Ils sont également doués pour la recherche de nourriture, la collecte de nourriture et de fournitures qui peuvent aider leurs alliés sur le terrain. Les chasseurs sont souvent fiers et indépendants, préférant travailler seuls et compter sur leurs compétences et leur intelligence plutôt que sur l'aide des autres. Au combat, ils sont souvent les premiers à frapper, abattant leurs ennemis avant même qu'ils ne sachent ce qui les frappe.",
  universe: fantasy,
  image_card_url: "https://cdn.midjourney.com/9c5cbda4-eb4e-4d04-b7bb-77f39e5e1fc4/grid_0.webp",
  image_background_card_url: "https://cdn.midjourney.com/ae8f7871-8f0b-4262-81a0-bce9b9a87bbd/grid_0.webp",
  image_background_page_url: "https://cdn.midjourney.com/23c49c1c-5b79-43a2-a590-3e6c251f94c7/grid_0.webp",
  strength: 13,
  dexterity: 16,
  constitution: 12,
  intelligence: 7,
  wisdom: 10,
  charisma: 7
)
puts "Created character chasseur"

puts "Creating character barde"
Character.create(
  name: "Barde",
  description: "Un maître dans tous les arts, un touche-à-tout. Il connait bien de nombreux domaines, notamment la musique, la narration, la poésie et le combat. Les bardes sont connus pour leur capacité à captiver et à séduire leur public en tissant leurs histoires et leur musique ensemble.
  Au combat, les bardes sont efficaces et polyvalents. Ils sont capables d'utiliser leurs instruments et leurs voix pour embrouiller et perturber l'esprit de leurs ennemis, tout en utilisant des armes et des sorts pour attaquer. Les bardes peuvent également utiliser des sorts de guérison.
  En dehors de la bataille, les bardes sont inestimables. Ils peuvent utiliser leurs talents de persuasion et de charme pour convaincre les gens de faire leur offre.",
  parameters: " - La classe du joueur est : Barde. La classe Bard est un maître de nombreux métiers, un touche-à-tout. Ces personnages connaissent bien de nombreux domaines, notamment la musique, la narration, la poésie et le combat. Les bardes sont connus pour leur capacité à captiver et à séduire leur public en tissant leurs histoires et leur musique ensemble.
  Au combat, les bardes sont efficaces et polyvalents. Ils sont capables d'utiliser leurs instruments et leurs voix pour confondre et pénétrer leurs ennemis, tout en utilisant des armes et des sorts pour attaquer. Les bardes peuvent également apporter leur soutien au groupe en fournissant des sorts de guérison, des conseils et en améliorant leurs alliés avec leurs histoires et leur musique.
  En dehors de la bataille, les bardes sont inestimables. Ils peuvent utiliser leurs talents de persuasion et de charme pour convaincre les gens de faire leur offre et d'aider le groupe. Ils peuvent également utiliser leurs connaissances sur de nombreux sujets pour fournir des informations utiles à leurs compagnons.
  Dans l'ensemble, le barde est une classe unique qui peut fournir à la fois un soutien et une attaque à un groupe. Ils sont compétents dans de nombreux domaines et peuvent apporter un soutien à la fois pratique et moral à leurs compagnons.",
  universe: fantasy,
  image_card_url: "https://cdn.midjourney.com/87b9f4a2-e04f-487e-9bf1-082aa29ac1bf/grid_0.webp",
  image_background_card_url: "https://cdn.midjourney.com/5f0c5513-ca80-4002-8278-9cdcb6a9080a/grid_0.webp",
  image_background_page_url: "https://cdn.midjourney.com/9fa5ea88-fe03-436b-9ab0-ec0a834a25d3/grid_0.webp",
  strength: 7,
  dexterity: 13,
  constitution: 14,
  intelligence: 7,
  wisdom: 10,
  charisma: 16
)
puts "Created character barde"

puts "Creating character voleur"
Character.create(
  name: "Voleur",
  description: "Un expert pour naviguer dans les ombres. Avec une combinaison d'agilité, de ruse et d'habileté, le voleur est un maître de la subtilité et du subterfuge. Il est furtif et agile, capables de se faufiler sur ses ennemis et de frapper sans être vu. Il excelle dans l'utilisation de l'environnement à son avantage et peut détecter les pièges, esquiver les attaques et généralement déjouer ses adversaires.
  Le voleur possède également un large éventail de compétences et de capacités. Il est habiles au crochetage des serrures et des pièges, et il dispose d'un éventail de poisons et d'autres toxines. Il est également capables d'utiliser des poignards, des épées et des arcs avec une précision mortelle.
  C'est aussi un maître du déguisement et peut se déguiser en d'autres personnes ou créatures. Il peut également utiliser ses compétences de persuasion pour obtenir des informations ou accéder à des endroits où il ne pourrait pas aller autrement.",
  parameters: " - La classe du joueur est : Voleur. La classe Rogue est un expert pour naviguer dans les ombres. Avec une combinaison d'agilité, de ruse et d'habileté, le voleur est un maître de la subtilité et du subterfuge. Ils sont furtifs et agiles, capables de se faufiler sur leurs ennemis et de frapper sans être vus. Ils excellent dans l'utilisation de l'environnement à leur avantage et peuvent détecter les pièges, esquiver les attaques et généralement déjouer leurs adversaires.
  Le voleur possède également un large éventail de compétences et de capacités. Ils sont habiles à utiliser des crochets et des pièges, et ils disposent d'un éventail de poisons et d'autres toxines. Ils sont également capables d'utiliser des poignards, des épées et des arcs avec une précision mortelle.
  Le Rogue est un maître du déguisement et peut se déguiser en d'autres personnes ou créatures. Ils peuvent également utiliser leurs compétences de persuasion pour obtenir des informations ou accéder à des endroits où ils ne pourraient pas aller autrement.
  Le Rogue est une classe polyvalente et convient à tout groupe d'aventuriers. Ils peuvent être un atout majeur dans n'importe quelle situation et peuvent faire la différence entre le succès et l'échec.",
  universe: fantasy,
  image_card_url: "https://cdn.midjourney.com/9cd9703e-5734-4e11-b3d9-064537430d67/grid_0.webp",
  image_background_card_url: "https://cdn.midjourney.com/48d8e446-65e2-4055-94ea-ec6247e4b9de/grid_0.webp",
  image_background_page_url: "https://cdn.midjourney.com/e3753440-0f23-4864-948d-d1db19249306/grid_0.webp",
  strength: 11,
  dexterity: 16,
  constitution: 12,
  intelligence: 10,
  wisdom: 8,
  charisma: 13
)
puts "Created character voleur"

# creating 5 characters for post-apocaliptic universe
puts "Creating character Trader"
Character.create(
  name: "Marchand",
  description: "Un survivant qui a pris sur lui de braver les dangers des terres désolées pour acquérir et vendre des biens.
  Ils sont passés maîtres dans le troc et gagnent leur vie en échangeant avec d'autres pour acquérir les objets dont ils ont besoin pour leur propre survie.
  Ils connaissent bien l'art de la négociation et ont un sens aigu de la détection de la valeur des objets.
  Ils sont également une source précieuse d'informations, car ils ont souvent beaucoup voyagé et ont vu de nombreux dangers et opportunités des terres désolées",
  parameters: " - La classe du joueur est : Marchand. Le Marchand est un survivant du monde post-apocalyptique qui a pris sur lui de braver les dangers des terres désolées afin d'acquérir et de vendre des marchandises. Ils sont passés maîtres dans le troc et gagnent leur vie en échangeant avec d'autres pour acquérir les objets dont ils ont besoin pour leur propre survie. Ils connaissent bien l'art de la négociation et ont un sens aigu de la détection de la valeur des objets. Ils sont également une source précieuse d'informations, car ils ont souvent beaucoup voyagé et ont vu de nombreux dangers et opportunités des terres désolées.",
  universe: post_apocalyptic,
  image_card_url: "https://cdn.midjourney.com/ca451bd4-5745-4d80-8304-35ce7e7814f2/grid_0.webp",
  image_background_card_url: "https://cdn.midjourney.com/69f9b425-f9fc-4a11-a4fa-6908c81925cc/grid_0.webp",
  image_background_page_url: "https://cdn.midjourney.com/6f174239-e679-4227-af41-608679049a4e/grid_0.webp",
  strength: 9,
  dexterity: 12,
  constitution: 12,
  intelligence: 8,
  wisdom: 8,
  charisma: 16
)
puts "Created character Trader"

puts "Creating character Scientist"
Character.create(
  name: "Scientifique",
  description: "Un survivant qui se consacre à l'utilisation de ses connaissances et de ses compétences pour aider à reconstruire le monde.
  Ils ont une compréhension approfondie de la science et de la technologie et utilisent leur expertise pour développer de nouvelles technologies et armes qui peuvent aider à lutter contre les horreurs du monde.
  Ils sont capables d'inventer et de rechercher de nouvelles façons de créer des objets et des machines et sont souvent à la recherche de matériaux et de composants qu'ils peuvent utiliser pour créer leurs inventions.",
  parameters: " - La classe du joueur est : Scientifique. Un scientifique est un personnage d'un jeu de rôle post-apocalyptique qui se consacre à l'utilisation de ses connaissances et de ses compétences pour aider à reconstruire le monde. Ils ont une compréhension approfondie de la science et de la technologie et utilisent leur expertise pour développer de nouvelles technologies et armes qui peuvent aider à lutter contre la destruction du monde. Ils sont capables d'inventer et de rechercher de nouvelles façons de créer des objets et des machines et sont souvent à la recherche de matériaux et de composants qu'ils peuvent utiliser pour créer leurs inventions. Ils travaillent souvent avec d'autres joueurs pour créer et tester des inventions, et sont prêts à partager leurs connaissances avec d'autres. Ils sont également capables de fournir une aide médicale à d'autres personnages et de fournir des conseils sur la façon de survivre dans ce monde difficile.",
  universe: post_apocalyptic,
  image_card_url: "https://cdn.midjourney.com/36266fd4-9b07-4a9a-af9b-5f22cb15a165/grid_0.webp",
  image_background_card_url: "https://cdn.midjourney.com/2f1fc0a2-676f-47f4-bd89-2a8cb2c13c43/grid_0.webp",
  image_background_page_url: "https://cdn.midjourney.com/0d536dd6-eed0-406c-8ac2-997bd2f39209/grid_0.webp",
  strength: 7,
  dexterity: 11,
  constitution: 12,
  intelligence: 16,
  wisdom: 11,
  charisma: 7
)
puts "Created character Scientist"

puts "Creating character Mercenary"
Character.create(
  name: "Mercenaire",
  description: "Un survivant robuste, endurci par le monde post-apocalyptique et doué dans les arts du combat et de la survie. Leur mode de vie solitaire leur a donné une expertise inégalée dans l'art de la guerre, et ils sont souvent recherchés par des colonies désespérées pour leurs prouesses mortelles au combat.
  Le travail mercenaire est dangereux et nécessite souvent de longs et épuisants voyages dans l'inconnu, mettant à l'épreuve leur volonté et leur courage face à un monde impitoyable.Les mercenaires sont incroyablement ingénieux et peuvent trouver des moyens de survivre dans presque tous les environnements.
  Ils sont également habiles pour la récupération des objets du monde d'avant dans les ruines du passé.",
  parameters: " - La classe du joueur est : Mercenaire. Le mercenaire est un survivant robuste, endurci par le monde post-apocalyptique et doué dans les arts du combat et de la survie. Leur mode de vie solitaire leur a donné une expertise inégalée dans l'art de la guerre, et ils sont souvent recherchés par des colonies désespérées pour leurs prouesses mortelles au combat. Le travail mercenaire est dangereux et nécessite souvent de longs et épuisants voyages dans l'inconnu, mettant à l'épreuve leur volonté et leur courage face à un monde impitoyable. Les mercenaires sont incroyablement ingénieux et peuvent trouver des moyens de survivre dans presque tous les environnements. Ils sont également habiles à récupérer des fournitures et à récupérer des objets utilisables dans les ruines du passé. Les mercenaires sont généralement des solitaires, mais ils peuvent également être un atout précieux pour n'importe quel groupe, offrant protection et soutien en cas de besoin.",
  universe: post_apocalyptic,
  image_card_url: "https://cdn.midjourney.com/451dcece-eaab-4893-acb3-986924251b60/grid_0.webp",
  image_background_card_url: "https://cdn.midjourney.com/5a1845e2-bada-4310-9105-15c4c6d5ed1a/grid_0.webp",
  image_background_page_url: "https://cdn.midjourney.com/7cb2de96-7250-4062-8021-dccda62efbd6/grid_0.webp",
  strength: 16,
  dexterity: 13,
  constitution: 14,
  intelligence: 9,
  wisdom: 7,
  charisma: 7
)
puts "Created character Mercenary"

puts "Creating character Mutant"
Character.create(
  name: "Mutant",
  description: "Un Mutant est un humain altéré par les radiations extrême du monde post-apocalyptique. Ils possèdent des capacités physiques accrues et une résistance limitée à l'environnement hostile, mais leur esprit a également été modifié, conduisant à un comportement imprévisible et à une gamme de pouvoirs étranges, de la télékinésie à la pyrokinésie.
  Les mutants ont souvent du mal à nouer des liens avec les gens et se méfient des étrangers. Ils sont aussi souvent craints et incompris, ce qui leur confère un statut d'outsider dans la société.",
  parameters: " - La classe du joueur est : Mutant. Un Mutant est un humain altéré par le rayonnement extrême du monde post-apocalyptique. Ils possèdent des capacités physiques accrues et une résistance limitée à l'environnement hostile, mais leur esprit a également été modifié, conduisant à un comportement imprévisible et à une gamme de pouvoirs étranges, de la télékinésie à la pyrokinésie. Les mutants ont souvent du mal à nouer des liens avec les gens et se méfient des étrangers. Ils sont aussi souvent craints et incompris, ce qui leur confère un statut d'outsider dans la société.",
  universe: post_apocalyptic,
  image_card_url: "https://cdn.midjourney.com/97a9aba7-568f-4c35-97a4-04b759e4d302/grid_0.webp",
  image_background_card_url: "https://cdn.midjourney.com/f19334ca-72c7-47b2-af69-dc92d3e21cb2/grid_0.webp",
  image_background_page_url: "https://cdn.midjourney.com/2abf587c-8d09-4b1d-b030-2f6edb598687/grid_0.webp",
  strength: 17,
  dexterity: 13,
  constitution: 10,
  intelligence: 10,
  wisdom: 8,
  charisma: 4
)
puts "Created character Mutant"

puts "Creating character Herbalist"
Character.create(
  name: "Herboriste",
  description: "Un maître de la nature, un survivant des terres désolées post-apocalyptique. Armés de leur connaissance du monde naturel, ils peuvent créer des remèdes à partir des ingrédients les plus inhabituels.
  Ils ont développé des compétences que personne d'autre ne possède, leur permettant de créer des potions et des baumes qui peuvent soigner les malades et les blessés. Un etre capable de transformer le désert aride en une source de subsistance. Ils sont une lueur d'espoir dans un monde où la plupart des espoirs sont perdus.",
  parameters: " - La classe du joueur est : Herboriste. L'herboriste est un maître de la nature, un survivant des terres désolées post-apocalyptique. Armés de leur connaissance du monde naturel, ils peuvent créer des remèdes à partir des ingrédients les plus inhabituels. Ils ont développé des compétences que personne d'autre ne possède, leur permettant de créer des potions et des baumes qui peuvent soigner les malades et les blessés. L'herboriste est un ajout précieux à tout groupe de survivants, capable de transformer le désert aride en une source de subsistance. Ils sont une lueur d'espoir dans un monde où la plupart des espoirs sont perdus.",
  universe: post_apocalyptic,
  image_card_url: "https://cdn.midjourney.com/d1b8ba50-d14e-4381-84fb-eb31f114f063/grid_0.webp",
  image_background_card_url: "https://cdn.midjourney.com/a954e65f-45df-43dc-85f1-9e2b2876a1d8/grid_0.webp",
  image_background_page_url: "https://cdn.midjourney.com/427cb878-1c2a-4f02-b072-1c305ed3a26e/grid_0.webp",
  strength: 9,
  dexterity: 12,
  constitution: 13,
  intelligence: 8,
  wisdom: 16,
  charisma: 9
)
puts "Created character Herbalist"



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

puts "Creating prompts"
Prompt.create(
  name: "choices",
  content: "- Always finish your paragraph by listing 2,3 or 4 actions the player can do in an ordered list."
)
Prompt.create(
  name: "difficulty-hard",
  content: "- Make the game difficulty hard for the player."
)
Prompt.create(
  name: "difficulty-easy",
  content: "- Make the game difficulty easy for the player."
)

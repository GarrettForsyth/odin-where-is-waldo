# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Character.create(name: 'Waldo', image: Rails.root.join("app/assets/images/waldo.jpg").open)
Character.create(name: 'Wizard Whitebeard', image: Rails.root.join("app/assets/images/wizard.jpg").open)
Character.create(name: 'Woof', image: Rails.root.join("app/assets/images/woof.jpg").open)
Character.create(name: 'Wilma', image: Rails.root.join("app/assets/images/wilma.jpg").open)
Character.create(name: 'Wenda', image: Rails.root.join("app/assets/images/wenda.jpg").open)
Character.create(name: 'Odlaw', image: Rails.root.join("app/assets/images/odlaw.jpg").open)

Photo.create(image: Rails.root.join("app/assets/images/waldo_boats.jpg").open)
Photo.create(image: Rails.root.join("app/assets/images/waldo_flags.jpg").open)
Photo.create(image: Rails.root.join("app/assets/images/waldo_castle.jpg").open)
Photo.create(image: Rails.root.join("app/assets/images/waldo_goblin.jpg").open)

boats = Photo.find(1);
flags = Photo.find(2);
castle = Photo.find(3);
goblins = Photo.find(4);

boats.characters << Character.find_by(name: "Waldo");
boats.characters << Character.find_by(name: "Wenda");
boats.characters << Character.find_by(name: "Wizard Whitebeard");
Location.create(photo: boats, character: Character.find_by(name: "Waldo"), coord: {x: 764, y: 272 })

Location.create(photo: boats, character: Character.find_by(name: "Wenda"), coord: {x: 363, y: 419 })
Location.create(photo: boats, character: Character.find_by(name: "Wizard Whitebeard"), coord: {x: 1111, y: 219 })

flags.characters << Character.find_by(name: "Waldo");
flags.characters << Character.find_by(name: "Odlaw");
flags.characters << Character.find_by(name: "Wenda");
flags.characters << Character.find_by(name: "Wizard Whitebeard");

Location.create(photo: flags, character: Character.find_by(name: "Waldo"), coord: {x: 1925, y: 90 })
Location.create(photo: flags, character: Character.find_by(name: "Odlaw"), coord: {x: 1845, y: 753 })
Location.create(photo: flags, character: Character.find_by(name: "Wenda"), coord: {x: 570, y: 857 })
Location.create(photo: flags, character: Character.find_by(name: "Wizard Whitebeard"), coord: {x: 600, y: 527 })

castle.characters << Character.find_by(name: "Waldo");
castle.characters << Character.find_by(name: "Wenda");
castle.characters << Character.find_by(name: "Wizard Whitebeard");

Location.create(photo: castle, character: Character.find_by(name: "Waldo"), coord: {x: 477, y: 1547 })
Location.create(photo: castle, character: Character.find_by(name: "Wenda"), coord: {x: 2138, y: 1392 })
Location.create(photo: castle, character: Character.find_by(name: "Wizard Whitebeard"), coord: {x: 821, y: 250 })

goblins.characters << Character.find_by(name: "Waldo");
goblins.characters << Character.find_by(name: "Odlaw");
goblins.characters << Character.find_by(name: "Wenda");
goblins.characters << Character.find_by(name: "Woof");
goblins.characters << Character.find_by(name: "Wizard Whitebeard");

Location.create(photo: goblins, character: Character.find_by(name: "Waldo"), coord: {x: 1604, y: 624 })
Location.create(photo: goblins, character: Character.find_by(name: "Odlaw"), coord: {x: 1128, y: 1065 })
Location.create(photo: goblins, character: Character.find_by(name: "Wenda"), coord: {x: 1090, y: 580 })
Location.create(photo: goblins, character: Character.find_by(name: "Woof"), coord: {x: 1916, y: 1085 })
Location.create(photo: goblins, character: Character.find_by(name: "Wizard Whitebeard"), coord: {x: 2385, y: 1505 })


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Character.create(name: 'Waldo', image: Rails.root.join("app/assets/images/waldo.jpg").open)
Character.create(name: 'Woof', image: Rails.root.join("app/assets/images/woof.jpg").open)
Character.create(name: 'Wenda', image: Rails.root.join("app/assets/images/wenda.jpg").open)
Character.create(name: 'Wizard Whitebeard', image: Rails.root.join("app/assets/images/wizard.jpg").open)
Character.create(name: 'Odlaw', image: Rails.root.join("app/assets/images/odlaw.jpg").open)

Photo.create(image: Rails.root.join("app/assets/images/waldo_boats.jpg").open)
boats = Photo.find(1);
boats.characters << Character.find_by(name: "Waldo");
boats.characters << Character.find_by(name: "Wenda");
boats.characters << Character.find_by(name: "Wizard Whitebeard");


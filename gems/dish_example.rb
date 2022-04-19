require 'rubygems'
require 'dish'

hash = {
  movie: "Star Wars",
  actors: [
    { age: 22, name: "Luke" },
    { age: 35, name: "Han" },
    { age: 400, name: "Yoda" }
  ],
  favourite: true
}

# p hash[:movie]
# p hash[:actors][0][:age]

# p media = Dish(hash)
media = Dish(hash)
p media.movie
p media.actors[1].age
p media.actors.length
media.actors.each { |actor| p actor.name }
# p media.actors
p media.favourite?




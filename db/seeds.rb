puts "cleaning db.."

Garden.destroy_all


Garden.create(name: "Batch#1217",
              banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg")

Garden.create(name: "Pedro's Garden",
              banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg")


["Fruit tree", "Cactus", "Greasy plant", "Flower", "Ferns", "Conifers"].each do |tag|
  Tag.create(name: tag)
end

Visitor.destroy_all
Forest.destroy_all
Animal.destroy_all

30.times do
  Visitor.create(name: Faker::Artist.name)
end

75.times do
  Animal.create(name: Faker::Games::SuperSmashBros.fighter, species: Faker::Creature::Animal.name)
end

  f1=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "Hoh Rainforest")
  f2=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "Yellowstone National Park")
  f3=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "Hickory Run State Park")
  f4=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "Lake Minnewaska")
  f5=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "Indiana Dunes")
  f6=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "The Black Forest")
  f7=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "Sherwood Forest")
  f8=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "Giant Redwoods Forest")
  f9=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "Tongass National Forest")
  f10=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "The Inland Rainforest")
  f11=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "The Great Bear Rainforest")
  f12=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "The Cloud Forests")
  f13=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "Laputa")
  f14=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "El Yunque")
  f15=Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: "Nouabalé-Ndoki National Park")





puts "seeded"

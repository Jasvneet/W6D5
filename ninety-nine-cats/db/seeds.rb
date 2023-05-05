# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ApplicationRecord.transaction do
    puts "destroying all tables..."
    Cat.destroy_all

    puts "reseting id sequence..."
    ApplicationRecord.connection.reset_pk_sequence!("cats")

    puts "creating seed data..."
    cat1 = Cat.create!(birth_date: "2010/05/05", color: "orange", name: "Garfield", sex: "M", description: "i am garfield and I am lazy")
    cat2 = Cat.create!(birth_date: "2016/06/05", color: "green", name: "Bubba", sex: "F", description: "meow meow meow")


    puts "seeding complete"
end
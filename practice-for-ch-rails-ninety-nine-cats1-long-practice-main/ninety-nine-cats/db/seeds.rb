# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

 
ApplicationRecord.transaction do
    # These `destroy_all` commands are not necessary--but will also not hurt--if
    # you use `rails db:seed:replant`.
    puts 'Destroying tables...'
    Cat.destroy_all
    # Reset the id (i.e., primary key) counters for each table to start at 1
    # (helpful for debugging)
    puts 'Resetting id sequences...'
    %w(users polls questions answer_choices responses).each do |table_name|
    end
    # Create seed data
    puts 'Loading seed data...'
    cat1 = Cat.create!(birth_date: '2022/01/20', color: 'black', name: 'lulu', sex: 'F')
    cat2 = Cat.create!(birth_date: '2002/01/20', color: 'brown', name: 'tom', sex: 'M')
    cat3 = Cat.create!(birth_date: '2012/01/20', color: 'white', name: 'jerry', sex: 'M')
    cat4 = Cat.create!(birth_date: '2000/01/20', color: 'black', name: 'ella', sex: 'F')
    puts 'Done!'
  end
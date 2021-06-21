# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |i|
  title = Faker::Lorem.sentence
  description = Faker::Lorem.sentence(word_count: 5, supplemental: true, random_words_to_add: 4)
  todo_list = TodoList.create(title: title, description: description)
  20.times do |j|
    set_date = rand(2) == 1 ? Time.zone.now : nil
    content = Faker::Lorem.sentence(word_count: 6, supplemental: true, random_words_to_add: 4)
    todo_list.todo_items.new(content: content, completed_at: set_date)
  end
  todo_list.save
end
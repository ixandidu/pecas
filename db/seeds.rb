# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

env_file = "#{Rails.root}/db/seeds/#{Rails.env}.rb"
if File.exists?(env_file)
  puts "✨ Seeding with #{env_file} ✨"
  require env_file
  puts "✨✨✨ Done! 😃🍻 ✨✨✨"
end

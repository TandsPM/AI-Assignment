# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing data from the programming_languages table
ProgrammingLanguage.destroy_all

# Seed data for programming_languages
programming_languages_data = [
  { title: 'Ruby', description: 'A dynamic, object-oriented programming language.', link: 'https://www.ruby-lang.org/' },
  { title: 'Python', description: 'A high-level, interpreted programming language.', link: 'https://www.python.org/' },
  { title: 'JavaScript', description: 'A scripting language that enables you to create dynamically updating content.', link: 'https://developer.mozilla.org/en-US/docs/Web/JavaScript' },
  # Add more programming languages as needed
]

# Create programming_languages records
programming_languages_data.each do |data|
  ProgrammingLanguage.create(data)
end

puts 'Seed data for programming_languages created successfully!'
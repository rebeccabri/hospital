# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
Doctor.destroy_all


10.times do
  doctor = Doctor.create!(
    name: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    title: ["Prof", "Dr"].sample,
    availability: Faker::Boolean.boolean, #=> true
    specialty: ["Dermatologist", "Pneumologist", "Cardiolgist", "Dentist", "GP"].sample,
    experience: Faker::Number.between(from: 2, to: 6)
  )
end

10.times do
  patients = Patient.create!(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    insurance: ["Private", "Public"].sample,
    cured: [true, false].sample
  )
end

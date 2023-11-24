class Doctor < ApplicationRecord
 has_many :educations, dependent: :destroy
 has_many :patients, through: :appointments


def create_collection_tag
  "#{self.title}. #{self.name} #{self.lastname} - #{self.specialty}"
end
end

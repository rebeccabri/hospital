class Doctor < ApplicationRecord
 has_many :educations, dependent: :destroy
end

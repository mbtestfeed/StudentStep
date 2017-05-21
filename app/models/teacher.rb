class Teacher < ApplicationRecord
  has_many :subjects

  validates_uniqueness_of :name, message: ' is already taken.'
end

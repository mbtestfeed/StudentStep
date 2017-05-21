class Student < ApplicationRecord
  has_many :sub_stu_links
  has_many :subjects, through: :sub_stu_links

  has_many :entries

  validates_uniqueness_of :name, message: ' is already taken.'

end

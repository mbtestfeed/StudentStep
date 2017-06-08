class Subject < ApplicationRecord
  belongs_to :teacher

  has_many :sub_stu_links
  has_many :students, through: :sub_stu_links
  has_many :plans

  validates_uniqueness_of :name, scope: :teacher, message: 'is taken for this teacher.'
end

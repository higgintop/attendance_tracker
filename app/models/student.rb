class Student < ActiveRecord::Base
  has_many :attendances
  validates :name, presence: true, length: {minimum: 2}
end

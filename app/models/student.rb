class Student < ActiveRecord::Base
  attr_accessible :birthdate, :email, :name, :registry

  validates :birthdate, :email, :name, :registry, :presence => true
  validates :email, :uniqueness => true

end

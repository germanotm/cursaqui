class Student < ActiveRecord::Base
  attr_accessible :birthdate, :email, :name, :registry, :course_ids

  has_and_belongs_to_many :courses

  validates :birthdate, :email, :name, :registry, :presence => true
  validates :email,:registry, :uniqueness => true

  def age
    current_date = Date.today
    years = current_date.year - self.birthdate.year
    years -= 1 if (self.birthdate.month > current_date.month) || (self.birthdate.month == current_date.month && self.birthdate.day > current_date.day)
    months = current_date.month - self.birthdate.month
    months -= 1 if self.birthdate.day > current_date.day
    {:years => years,:months => months}
  end

end

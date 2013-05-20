class Course < ActiveRecord::Base
  attr_accessible :capacity, :date_end, :date_start, :location, :name, :student_ids

  has_and_belongs_to_many :students

  validates :capacity, :date_end, :date_start, :location, :name, :presence => true
  validate :date_end_should_be_greater

  private 
  def date_end_should_be_greater
  	errors.add(:base, "Data final deve ser maior que data inicial") if self.date_end <= self.date_start
  end
end

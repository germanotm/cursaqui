require 'spec_helper'

describe Course do
  def valid_attributes
	  {
	    :name => 'Curso',
      :capacity => 10,
      :date_start=> DateTime.now, 
      :date_end => DateTime.now + 1.day,
      :location => "Rua bla"
	  }
  end

  it 'should create course' do
    lambda do
     course = Course.new(valid_attributes)
     course.save
    end.should change(Course,:count).by(1)
  end

  [:capacity, :location, :name].each do |field|
    it "validate presence of #{field}" do
      lambda do
        course = Course.new(valid_attributes.except(field))
        course.save
      end.should_not change(Course,:count)
    end
  end

  describe 'relationships' do
    let(:course) { FactoryGirl.create(:basic_course) }

    it 'should have students' do
    	course.students << FactoryGirl.create(:basic_student)
      course.students.count.should == 1
    end

  end
end
